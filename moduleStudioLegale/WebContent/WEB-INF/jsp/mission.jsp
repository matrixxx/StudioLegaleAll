<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.2/table_data_tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 Jun 2015 14:07:44 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Missions</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Data Tables -->
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="css/plugins/dataTables/dataTables.responsive.css" rel="stylesheet">
    <link href="css/plugins/dataTables/dataTables.tableTools.min.css" rel="stylesheet">

	<link href="css/plugins/chosen/chosen.css" rel="stylesheet">
	
	<link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
	
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
    <!-- Language -->
    <link href="css/languages.min.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">
		<%@ include file="menu.jsp" %>
	
    	<div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
 			<%@ include file="header.jsp" %>
        </div>
        <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Missions</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="dashboard_2.html">Home</a>
                        </li>
                        <li>
                            <strong>Missions</strong>
                        </li>
                    </ol>
                 </div>
                <div class="col-lg-2">

                </div>
        </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><spring:message code="message.missions"/></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#">Config option 1</a>
                                </li>
                                <li><a href="#">Config option 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<strong>Advanced research</strong>
                    	<br/>
                    	<br/>
                    	<form action="mission.html" role="form" class="form-inline">
                    		<div class="form-group">
                    			<div>Mission state</div>
                    			<select class="chosen-select" id="missionState" name="missionState" style="width: 200px;">
                    				<c:forEach items="${states}" var="state">
                    					<option>${state.name}</option>
                    				</c:forEach>
                    			</select>
                    		</div>
                    		&nbsp;
                    		<div class="form-group">
                    			<div>Sites</div>
                    			<select id="site" name="site" data-placeholder="Choose a Site..." class="chosen-select" style="width:250px;" tabindex="2">
                    				<c:forEach items="${macroUsers}" var="macroUser">
                    					<option>${macroUser.name}</option>
                    				</c:forEach>
                    			</select>
                    		</div>
                    		&nbsp;
                    		<div class="form-group" id="data_5">
                                <div>Range select</div>
                                <div class="input-daterange input-group" id="datepicker">
                                    <input type="text" class="input-sm form-control" name="start"/>
                                    <span class="input-group-addon">to</span>
                                    <input type="text" class="input-sm form-control" name="end"/>
                                </div>
                            </div>
                    		<br/>
                    		<br/>
                    		<div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-primary" type="submit">Go!</button>
                                    </div>
                                </div>
                    	</form>
                    </div>
                    <div class="ibox-content">

                    <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover dataTables-example" >
                    <thead>
    					<tr>
      						<th>Item</th>
							<th>Creation date</th>
      						<th>    						
								<spring:message code="message.description"/>
							</th>
							<th>Last update</th>
							<th>Source</th>
							<th>State</th>
							<th>Site</th>
							<th>Tasks</th>
    					</tr>
  					</thead>
                    <tbody>
                	<c:forEach items="${missions}" var="mission">
                		<tr>
                      		<td style="display: table-cell"><a href="mission.html?assetId=${mission.asset.idItem}"><strong>${mission.asset.name}</strong></a></td>
                     		<td style="display: table-cell">${mission.creationDate}</td>
                      		<td style="display: table-cell">${mission.description}</td>
                      		<td style="display: table-cell">${mission.lastUpdate}</td>
                      		<td style="display: table-cell">${mission.source}</td>
                      		<td style="display: table-cell">${mission.state.name}</td>
                      		<td style="display: table-cell">${mission.macroUser.name}</td>
                      		<td style="display: table-cell"><a href="task.html?idMission=${mission.idMission}" class="fa fa-tasks"></a></td>
                   	 	</tr>
                	</c:forEach>
  					</tbody>
                    <tfoot>
                    	<tr>
      						<th>Item</th>
							<th>Creation date</th>
      						<th>    						
								<spring:message code="message.description"/>
							</th>
							<th>Last update</th>
							<th>Source</th>
							<th>State</th>
							<th>Site</th>
							<th>Tasks</th>
    					</tr>
                    </tfoot>
                    </table>
                    </div>

                    </div>
                </div>
            </div>
            </div>
        </div>
       <div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content animated fadeInUp">

                    <div class="ibox">
                        <div class="ibox-title">
                            <h5>Tasks</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="row m-b-sm m-t-sm">
                                <div class="col-md-1">
                                    <button type="button" id="loading-example-btn" class="btn btn-white btn-sm" ><i class="fa fa-refresh"></i> Refresh</button>
                                </div>
                            </div>

                            <div class="project-list">

                                <table class="table table-hover">
                                    <tbody>
                                    <c:if test="${empty tasks}">No matching records found</c:if>
                                    <c:forEach items="${tasks}" var="task">
                                    	<tr>
                                    	<td class="project-status">
                                    	<c:choose>
                                    		<c:when test="${task.state.name == 'Assegnazione pendente'}"><span class="label label-success" style="background-color: green; !important">${task.state.name}</span></c:when>
                                    		<c:when test="${task.state.name == 'Chiuso'}"><span class="label label-danger" style="background-color: red; !important">${task.state.name}</span></c:when>
                                            <c:otherwise><span class="label label-warning" style="background-color: yellow; !important">${task.state.name}</span></c:otherwise>
                                        </c:choose>
                                        </td>
                                        <td class="project-title">
                                            <a href="project_detail.html">${task.mission.asset.name}</a>
                                            <br/>
                                            <small>Last update: ${task.lastUpdate}</small>
                                        </td>
                                        <td>
                                        	<small>${task.description}</small>
                                        </td>
                                        <td class="project-people">
                                            <c:forEach items="${operatorsMap}" var="map">
                                            	<c:if test="${map.key == task.idTask}">
                                            		<c:forEach items="${map.value}" var="user">
                                            			${user.firstname}&nbsp;${user.secondname}<br/>
                                            		</c:forEach>
                                            	</c:if>
                                            </c:forEach>
                                        </td>
                                        <td class="project-actions">
                                            <a href="#" class="btn btn-white btn-sm"><i class="fa fa-folder"></i> View </a>
                                            <a href="#" class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> Edit </a>
                                        </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <%@ include file="footer.jsp" %>

      </div>
 </div>



    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/plugins/jeditable/jquery.jeditable.js"></script>

    <!-- Data Tables -->
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="js/plugins/dataTables/dataTables.responsive.js"></script>
    <script src="js/plugins/dataTables/dataTables.tableTools.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

	<!-- Chosen -->
    <script src="js/plugins/chosen/chosen.jquery.js"></script>

	<!-- Data picker -->
    <script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>
	
    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {
    		$('#task_table').hide();
            $('.dataTables-example').dataTable({
                responsive: true,
                "dom": 'T<"clear">lfrtip',
                "tableTools": {
                    "sSwfPath": "js/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
                }
            });

            /* Init DataTables */
            var oTable = $('#editable').dataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable( 'http://webapplayers.com/example_ajax.php', {
                "callback": function( sValue, y ) {
                    var aPos = oTable.fnGetPosition( this );
                    oTable.fnUpdate( sValue, aPos[0], aPos[1] );
                },
                "submitdata": function ( value, settings ) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition( this )[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            } );

            $('#loading-example-btn').click(function () {
                btn = $(this);
                simpleLoad(btn, true)

                // Ajax example
//                $.ajax().always(function () {
//                    simpleLoad($(this), false)
//                });

                simpleLoad(btn, false)
            });
            $('#data_5 .input-daterange').datepicker({
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });
        });

        var config = {
                '.chosen-select'           : {},
                '.chosen-select-deselect'  : {allow_single_deselect:true},
                '.chosen-select-no-single' : {disable_search_threshold:10},
                '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
                '.chosen-select-width'     : {width:"95%"}
                }
            for (var selector in config) {
                $(selector).chosen(config[selector]);
            }
        
        function simpleLoad(btn, state) {
            if (state) {
                btn.children().addClass('fa-spin');
                btn.contents().last().replaceWith(" Loading");
            } else {
                setTimeout(function () {
                    btn.children().removeClass('fa-spin');
                    btn.contents().last().replaceWith(" Refresh");
                }, 2000);
            }
        }
        
        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData( [
                "Custom row",
                "New row",
                "New row",
                "New row",
                "New row" ] );

        }
    </script>
<style>
    body.DTTT_Print {
        background: #fff;

    }
    .DTTT_Print #page-wrapper {
        margin: 0;
        background:#fff;
    }

    button.DTTT_button, div.DTTT_button, a.DTTT_button {
        border: 1px solid #e7eaec;
        background: #fff;
        color: #676a6c;
        box-shadow: none;
        padding: 6px 8px;
    }
    button.DTTT_button:hover, div.DTTT_button:hover, a.DTTT_button:hover {
        border: 1px solid #d2d2d2;
        background: #fff;
        color: #676a6c;
        box-shadow: none;
        padding: 6px 8px;
    }

    .dataTables_filter label {
        margin-right: 5px;

    }
</style>
</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.2/table_data_tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 17 Jun 2015 14:07:48 GMT -->
</html>
