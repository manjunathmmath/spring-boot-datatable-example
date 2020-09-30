<%@ include file="../common/header.jspf" %>
<body class="hold-transition sidebar-mini">

<div class="wrapper">
    <%@ include file="../common/navigation.jspf" %>
    <%@ include file="../common/sidebar.jsp" %>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>DataTables</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">DataTables</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">DataTable</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <%@ include file="_dataList.jspf" %>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <%@ include file="../common/footer.jspf" %>
</div>
<!-- ./wrapper -->
<script type="text/javascript">
    $(document).ready(function () {
        fetchDataListTable()
    });

    function fetchDataListTable() {
        var oTable = $('#data-list-table').DataTable({
            "ajax": {
                "url": "/fetchAllStudents",
                dataSrc: ""
            },
            "paging": true,
            "scrollCollapse": true,
            "bDestroy": true,
            "dom": '<"dt-panelmenu clearfix" BHlf>t<"dt-panelfooter clearfix"ip>',
            buttons: [
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5'
            ],
            "aLengthMenu": [
                [5, 10, 20, 50, -1],
                [5, 10, 20, 50, "All"]
            ],
            "iDisplayLength": 5,
            "oLanguage": {
                "sSearch": "",
                "sLengthMenu": "_MENU_",
                "oPaginate": {
                    "sPrevious": "",
                    "sNext": ""
                }
            },
            "fnDrawCallback": function (oSettings) {
            },
            "columns": [
                {"data": "name"},
                {"data": "name"},
                {"data": "cgp"},
                {"data": ""},
            ],
            "columnDefs": [{
                "targets": [],
                "visible": false,
                "searchable": false
            }, {
                "render": function (data, type, row) {
                    var htmlMarkup = ''
                    htmlMarkup += '<div class="btn-group">'
                    htmlMarkup += '<button type="button" class="btn btn-default">Action</button>'
                    htmlMarkup += '<button type="button" class="btn btn-default dropdown-toggle dropdown-icon" data-toggle="dropdown">'
                    htmlMarkup += '<span class="sr-only">Toggle Dropdown</span>'
                    htmlMarkup += '<div class="dropdown-menu" role="menu">'
                    htmlMarkup += '<a class="dropdown-item" href="#">Action</a>'
                    htmlMarkup += '<a class="dropdown-item" href="#">Another action</a>'
                    htmlMarkup += '<a class="dropdown-item" href="#">Something else here</a>'
                    htmlMarkup += '<div class="dropdown-divider"></div>'
                    htmlMarkup += '<a class="dropdown-item" href="#">Separated link</a>'
                    htmlMarkup += '</div>'
                    htmlMarkup += '</button>'
                    htmlMarkup += '</div>'
                    return htmlMarkup
                },
                "targets": [3]
            }],
            "order": [],
            "fnInitComplete": function (oSettings, json) {
            },
            "preDrawCallback": function (settings) {
            },
            "initComplete": function (settings, json) {
            },
        });
        oTable.$('tr:odd').css('backgroundColor', 'blue');
    }

</script>
