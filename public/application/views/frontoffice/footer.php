<div class="footer">
  <div class="footer-inner">
    <div class="container">
      <div class="row">
        <div class="span12"> &copy; 2018 <a href="">Vixion</a>. <span class="pull-right">Distributed Database</span> </div>
        <!-- /span12 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /footer-inner --> 
</div>

<!-- /footer --> 
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="<?php  echo base_url() ?>asset/js/frontoffice/jquery-1.7.2.min.js"></script> 
<script src="<?php  echo base_url() ?>asset/js/frontoffice/excanvas.min.js"></script> 
<script src="<?php  echo base_url() ?>asset/js/frontoffice/chart.min.js" type="text/javascript"></script> 
<script src="<?php  echo base_url() ?>asset/js/frontoffice/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="<?php  echo base_url() ?>asset/js/frontoffice/full-calendar/fullcalendar.min.js"></script>
 
<script src="<?php  echo base_url() ?>asset/js/frontoffice/base.js"></script> 

<?
if($page == "reservation" ) {
?>
<script type="text/javascript">
  function date2str(date) {
    var d = date.getDate(); 
    var m = date.getMonth()+1;
    var y = date.getFullYear();
    if(d<10)d='0'+d;
    if(m<10)m='0'+m;
    return y+'-'+m+'-'+d;
  }
  $(document).ready(function() {
    var d = new Date();
    if($("#calendar").length>0) {
      $("#checkin_date").val(date2str(d));
      $('#checkout_date').val(date2str(d));
    }
    var calendar = $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month'
      },
      selectable: true,
      selectHelper: true,
      select: function(start, end, allDay) {
        console.log(typeof start);
        var d = new Date(start);
        console.log(d.getDate());
        console.log(date2str(start));console.log(date2str(end));
        $('#checkin_date').val(date2str(start));
        $('#checkout_date').val(date2str(end));
//        window.location.href="/reservation/make/" + year + "/" + month + "/" + day;
        return;
        var title = prompt('Event Title:');
        if (title) {
          calendar.fullCalendar('renderEvent',
            {
              title: title,
              start: start,
              end: end,
              allDay: allDay
            },
            true // make the event "stick"
          );
        }
        calendar.fullCalendar('unselect');
      },
      editable: false,
      events: [
      ]
    });
    /*$('#calendar').find('.fc-widget-content').css('background-color','rgb(198, 247, 198)');
    $('#calendar').find('.fc-other-month').css('background-color','transparent');*/
  });

</script>
<? } ?>
<style type="text/css">
    .calendar{-webkit-user-select: none; -moz-user-select: none;}
</style>
<script type="text/javascript">
  function open_form()
  {
    console.log("Opening Form...");
    $('#form').fadeIn();
  }

</script>
</body>
</html>
