    <div class="content-wrapper">
        <section class="content-header">
            <h1>Add Products</h1>
            <ol class="breadcrumb">
                <li><a href="https://spos.tecdiary.com/"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="https://spos.tecdiary.com/products">Products</a></li><li class="active">Add Products</li>            </ol>
        </section>

        <div class="col-lg-12 alerts">
            <div id="custom-alerts" style="display:none;">
                <div class="alert alert-dismissable">
                    <div class="custom-msg"></div>
                </div>
            </div>
                    </div>
        <div class="clearfix"></div>

<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Please fill in the information below</h3>
                </div>
                <div class="box-body">
                    <div class="col-lg-12">
                        <form action="https://spos.tecdiary.com/products/add" class="validation" enctype="multipart/form-data" method="post" accept-charset="utf-8">
<input type="hidden" name="spos_token" value="5941db46bffbc1f9d44705b91f3bc2ef" />                                                                              
                        <div class="row">
                            <div class="col-md-6">
                            <div class="form-group">
                                <label for="type">Type</label>                                                                <select name="type" class="form-control tip select2" id="type"  required="required" style="width:100%;">
<option value="standard" selected="selected">Standard</option>
<option value="combo">Combo</option>
<option value="service">Service</option>
</select>
                            </div>
                                <div class="form-group">
                                    <label for="name">Name</label>                                    <input type="text" name="name" value=""  class="form-control tip" id="name"  required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="code">Code</label> you can use product barcode as code                                    <input type="text" name="code" value=""  class="form-control tip" id="code"  required="required" />
                                </div>
                                <div class="form-group all">
                                    <label for="barcode_symbology">Barcode Symbology</label>                                    <select name="barcode_symbology" class="form-control select2" id="barcode_symbology" required="required" style="width:100%;">
<option value="code25">Code25</option>
<option value="code39">Code39</option>
<option value="code128" selected="selected">Code128</option>
<option value="ean8">EAN8</option>
<option value="ean13">EAN13</option>
<option value="upca ">UPC-A</option>
<option value="upce">UPC-E</option>
</select>
                                </div>

                                <div class="form-group">
                                    <label for="category">Category</label>                                                                        <select name="category" class="form-control select2 tip" id="category"  required="required" style="width:100%;">
<option value="" selected="selected">Select Category</option>
<option value="1">General</option>
</select>
                                </div>

                                <div class="form-group st">
                                    <label for="cost">Cost</label>                                    <input type="text" name="cost" value=""  class="form-control tip" id="cost" />
                                </div>

                                <div class="form-group">
                                    <label for="price">Price</label>                                    <input type="text" name="price" value=""  class="form-control tip" id="price"  required="required" />
                                </div>

                                <div class="form-group">
                                    <label for="product_tax">Product Tax</label> Percentage without % sign i.e 4 for 4 percent                                    <input type="text" name="product_tax" value="0"  class="form-control tip" id="product_tax"  required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="tax_method">Tax Method</label>                                                                        <select name="tax_method" class="form-control tip select2" id="tax_method"  required="required" style="width:100%;">
<option value="0">Inclusive</option>
<option value="1">Exclusive</option>
</select>
                                </div>
                                <div class="form-group st">
                                    <label for="alert_quantity">Alert Quantity</label>                                    <input type="text" name="alert_quantity" value="0"  class="form-control tip" id="alert_quantity"  required="required" />
                                </div>

                                <div class="form-group">
                                    <label for="image">Image</label>                                    <input type="file" name="userfile" id="image">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div id="ct" style="display:none;">
                                    <div class="form-group">
                                        <label for="add_item">Add Products</label>                                        <input type="text" name="add_item" value=""  class="form-control ttip" id="add_item" data-placement="top" data-trigger="focus" data-bv-notEmpty-message="Please add items below" placeholder="Add Item" />
                                    </div>
                                    <div class="control-group table-group">
                                        <label class="table-label" for="combo">Combo Products</label>

                                        <div class="controls table-controls">
                                            <table id="prTable"
                                                   class="table items table-striped table-bordered table-condensed table-hover">
                                                <thead>
                                                <tr>
                                                    <th class="col-xs-9">Product Name (Product Code)</th>
                                                    <th class="col-xs-2">Quantity</th>
                                                    <th class=" col-xs-1 text-center"><i class="fa fa-trash-o trash-opacity-50"></i></th>
                                                </tr>
                                                </thead>
                                                <tbody></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                                                <div class="">
                                    <div class="well well-sm">
                                        <h4>SimplePOS (POS)</h4>
                                        <div class="form-group st">
                                            <label for="quantity1">Quantity</label>                                            <input type="text" name="quantity1" value="0"  class="form-control tip" id="quantity1" />
                                        </div>
                                        <div class="form-group" style="margin-bottom:0;">
                                            <label for="price1">Price</label>                                            <input type="text" name="price1" value=""  class="form-control tip" id="price1" placeholder="Optional" />
                                        </div>
                                    </div>
                                </div>
                                                            </div>
                        </div>
                        <div class="form-group">
                            <label for="details">Details</label>                            <textarea name="details" cols="40" rows="10"  class="form-control tip redactor" id="details"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="add_product" value="Add Products"  class="btn btn-primary" />
                        </div>
                        </form>                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="text/javascript" charset="utf-8">
    var price = 0; cost = 0; items = {};
    $(document).ready(function() {
        $('#type').change(function(e) {
            var type = $(this).val();
            if (type == 'combo') {
                $('.st').slideUp();
                $('#ct').slideDown();
                //$('#cost').attr('readonly', true);
            } else if (type == 'service') {
                $('.st').slideUp();
                $('#ct').slideUp();
                //$('#cost').attr('readonly', false);
            } else {
                $('#ct').slideUp();
                $('.st').slideDown();
                //$('#cost').attr('readonly', false);
            }
        });

        $("#add_item").autocomplete({
            source: 'https://spos.tecdiary.com/products/suggestions',
            minLength: 1,
            autoFocus: false,
            delay: 200,
            response: function (event, ui) {
                if ($(this).val().length >= 16 && ui.content[0].id == 0) {
                    bootbox.alert('No product found!', function () {
                        $('#add_item').focus();
                    });
                    $(this).val('');
                }
                else if (ui.content.length == 1 && ui.content[0].id != 0) {
                    ui.item = ui.content[0];
                    $(this).data('ui-autocomplete')._trigger('select', 'autocompleteselect', ui);
                    $(this).autocomplete('close');
                    $(this).removeClass('ui-autocomplete-loading');
                }
                else if (ui.content.length == 1 && ui.content[0].id == 0) {
                    bootbox.alert('No product found!', function () {
                        $('#add_item').focus();
                    });
                    $(this).val('');

                }
            },
            select: function (event, ui) {
                event.preventDefault();
                if (ui.item.id !== 0) {
                    var row = add_product_item(ui.item);
                    if (row) {
                        $(this).val('');
                    }
                } else {
                    bootbox.alert('No product found!');
                }
            }
        });
        $('#add_item').bind('keypress', function (e) {
            if (e.keyCode == 13) {
                e.preventDefault();
                $(this).autocomplete("search");
            }
        });

        $(document).on('click', '.del', function () {
            var id = $(this).attr('id');
            delete items[id];
            $(this).closest('#row_' + id).remove();
        });


        $(document).on('change', '.rqty', function () {
            var item_id = $(this).attr('data-item');
            items[item_id].row.qty = (parseFloat($(this).val())).toFixed(2);
            add_product_item(null, 1);
        });

        $(document).on('change', '.rprice', function () {
            var item_id = $(this).attr('data-item');
            items[item_id].row.price = (parseFloat($(this).val())).toFixed(2);
            add_product_item(null, 1);
        });

        function add_product_item(item, noitem) {
            if (item == null && noitem == null) {
                return false;
            }
            if (noitem != 1) {
                item_id = item.row.id;
                if (items[item_id]) {
                    items[item_id].row.qty = (parseFloat(items[item_id].row.qty) + 1).toFixed(2);
                } else {
                    items[item_id] = item;
                }
            }
            price = 0;
            cost = 0;

            $("#prTable tbody").empty();
            $.each(items, function () {
                var item = this.row;
                var row_no = item.id;
                var newTr = $('<tr id="row_' + row_no + '" class="item_' + item.id + '"></tr>');
                tr_html = '<td><input name="combo_item_id[]" type="hidden" value="' + item.id + '"><input name="combo_item_code[]" type="hidden" value="' + item.code + '"><input name="combo_item_name[]" type="hidden" value="' + item.name + '"><input name="combo_item_cost[]" type="hidden" value="' + item.cost + '"><span id="name_' + row_no + '">' + item.name + ' (' + item.code + ')</span></td>';
                tr_html += '<td><input class="form-control text-center rqty" name="combo_item_quantity[]" type="text" value="' + formatDecimal(item.qty) + '" data-id="' + row_no + '" data-item="' + item.id + '" id="quantity_' + row_no + '" onClick="this.select();"></td>';
                //tr_html += '<td><input class="form-control text-center rprice" name="combo_item_price[]" type="text" value="' + formatDecimal(item.price) + '" data-id="' + row_no + '" data-item="' + item.id + '" id="combo_item_price_' + row_no + '" onClick="this.select();"></td>';
                tr_html += '<td class="text-center"><i class="fa fa-times tip del" id="' + row_no + '" title="Remove" style="cursor:pointer;"></i></td>';
                newTr.html(tr_html);
                newTr.prependTo("#prTable");
                //price += formatDecimal(item.price*item.qty);
                cost += formatDecimal(item.cost*item.qty);
            });
            $('#cost').val(cost);
            return true;

        }
            });




</script>

</div>
