    <div class="content-wrapper">
        <section class="content-header">
            <h1>Products</h1>
            <ol class="breadcrumb">
                <li><a href="https://spos.tecdiary.com/"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Products</li>            </ol>
        </section>

        <div class="col-lg-12 alerts">
            <div id="custom-alerts" style="display:none;">
                <div class="alert alert-dismissable">
                    <div class="custom-msg"></div>
                </div>
            </div>
                    </div>
        <div class="clearfix"></div>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="text/javascript">
    $(document).ready(function() {

        function ptype(x) {
            if (x == 'standard') {
                return 'Standard';
            } else if (x == 'combo') {
                return 'Combo';
            } else if (x == 'service') {
                return 'Service';
            } else {
                return x;
            }
        }

        function image(n) {
            if (n !== null) {
                return '<div style="width:32px; margin: 0 auto;"><a href="https://spos.tecdiary.com/uploads/'+n+'" class="open-image"><img src="https://spos.tecdiary.com/uploads/thumbs/'+n+'" alt="" class="img-responsive"></a></div>';
            }
            return '';
        }

        function method(n) {
            return (n == 0) ? '<span class="label label-primary">Inclusive</span>' : '<span class="label label-warning">Exclusive</span>';
        }

        var table = $('#prTables').DataTable({

            // 'ajax': 'https://spos.tecdiary.com/products/get_products/1',
            'ajax' : { url: 'https://spos.tecdiary.com/products/get_products/1', type: 'POST', "data": function ( d ) {
                d.spos_token = "5941db46bffbc1f9d44705b91f3bc2ef";
            }},
            "buttons": [
            { extend: 'copyHtml5', 'footer': false, exportOptions: { columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ] } },
            { extend: 'excelHtml5', 'footer': false, exportOptions: { columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ] } },
            { extend: 'csvHtml5', 'footer': false, exportOptions: { columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ] } },
            { extend: 'pdfHtml5', orientation: 'landscape', pageSize: 'A4', 'footer': false,
            exportOptions: { columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ] } },
            { extend: 'colvis', text: 'Columns'},
            ],
            "columns": [
            { "data": "pid", "visible": false },
            { "data": "image", "searchable": false, "orderable": false, "render": image },
            { "data": "code" },
            { "data": "pname" },
            { "data": "type", "render": ptype },
            { "data": "cname" },
            { "data": "quantity", "render": quantityFormat },
            { "data": "tax" },
            { "data": "tax_method", "render": method },
                        { "data": "cost", "render": currencyFormat, "searchable": false },
                        { "data": "price", "render": currencyFormat, "searchable": false },
            { "data": "Actions", "searchable": false, "orderable": false }
            ]

        });

        // $('#prTables tfoot th:not(:last-child, :nth-last-child(2), :nth-last-child(3))').each(function () {
        //     var title = $(this).text();
        //     $(this).html( '<input type="text" class="text_filter" placeholder="'+title+'" />' );
        // });

        $('#search_table').on( 'keyup change', function (e) {
            var code = (e.keyCode ? e.keyCode : e.which);
            if (((code == 13 && table.search() !== this.value) || (table.search() !== '' && this.value === ''))) {
                table.search( this.value ).draw();
            }
        });

        table.columns().every(function () {
            var self = this;
            $( 'input', this.footer() ).on( 'keyup change', function (e) {
                var code = (e.keyCode ? e.keyCode : e.which);
                if (((code == 13 && self.search() !== this.value) || (self.search() !== '' && this.value === ''))) {
                    self.search( this.value ).draw();
                }
            });
            $( 'select', this.footer() ).on( 'change', function (e) {
                self.search( this.value ).draw();
            });
        });

    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#prTables').on('click', '.image', function() {
            var a_href = $(this).attr('href');
            var code = $(this).attr('id');
            $('#myModalLabel').text(code);
            $('#product_image').attr('src',a_href);
            $('#picModal').modal();
            return false;
        });
        $('#prTables').on('click', '.barcode', function() {
            var a_href = $(this).attr('href');
            var code = $(this).attr('id');
            $('#myModalLabel').text(code);
            $('#product_image').attr('src',a_href);
            $('#picModal').modal();
            return false;
        });
        $('#prTables').on('click', '.open-image', function() {
            var a_href = $(this).attr('href');
            var code = $(this).closest('tr').find('.image').attr('id');
            $('#myModalLabel').text(code);
            $('#product_image').attr('src',a_href);
            $('#picModal').modal();
            return false;
        });
    });
</script>
<style type="text/css">
    .table td:first-child { padding: 1px; }
    .table td:nth-child(6), .table td:nth-child(7), .table td:nth-child(8) { text-align: center; }
    .table td:nth-child(9), .table td:nth-child(10) { text-align: right; }
</style>
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                                        <div class="dropdown pull-right">
                      <button class="btn btn-primary" id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        SimplePOS (POS)                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dLabel">
                                            </ul>
                </div>
                                <h3 class="box-title">Please use the table below to navigate or filter the results.</h3>
            </div>
            <div class="box-body">
                <div class="table-responsive">
                    <table id="prTables" class="table table-striped table-bordered table-hover" style="margin-bottom:5px;">
                        <thead>
                            <tr class="active">
                                <th style="max-width:30px;">ID</th>
                                <th style="max-width:30px;">Image</th>
                                <th class="col-xs-1">Code</th>
                                <th>Name</th>
                                <th class="col-xs-1">Type</th>
                                <th class="col-xs-1">Category</th>
                                <th class="col-xs-1">Quantity</th>
                                <th class="col-xs-1">Tax</th>
                                <th class="col-xs-1">Method</th>
                                                                    <th class="col-xs-1">Cost</th>
                                                                <th class="col-xs-1">Price</th>
                                <th style="width:165px;">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="12" class="dataTables_empty">Leading data from server</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th style="max-width:30px;"><input type="text" class="text_filter" placeholder="[ID]"></th>
                                <th style="max-width:30px;">Image</th>
                                <th class="col-xs-1"><input type="text" class="text_filter" placeholder="[Code]"></th>
                                <th><input type="text" class="text_filter" placeholder="[Name]"></th>
                                <th class="col-xs-1"><input type="text" class="text_filter" placeholder="[Type]"></th>
                                <th class="col-xs-1"><input type="text" class="text_filter" placeholder="[Category]"></th>
                                <th class="col-xs-1"><input type="text" class="text_filter" placeholder="[Quantity]"></th>
                                <th class="col-xs-1"><input type="text" class="text_filter" placeholder="[Tax]"></th>
                                <th class="col-xs-1">
                                    <select class="select2 select_filter"><option value="">All</option><option value="0">Inclusive</option><option value="1">Exclusive</option></select>
                                </th>
                                                                <th class="col-xs-1">Cost</th>
                                                                <th class="col-xs-1">Price</th>
                                <th style="width:165px;">Actions</th>
                            </tr>
                            <tr>
                                <td colspan="12" class="p0"><input type="text" class="form-control b0" name="search_table" id="search_table" placeholder="Type & hit enter to search the table" style="width:100%;"></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>

                <div class="modal fade" id="picModal" tabindex="-1" role="dialog" aria-labelledby="picModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
                                <button type="button" class="close mr10" onclick="window.print();"><i class="fa fa-print"></i></button>
                                <h4 class="modal-title" id="myModalLabel">title</h4>
                            </div>
                            <div class="modal-body text-center">
                                <img id="product_image" src="" alt="" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
</section>

</div>

