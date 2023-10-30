﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/InsiderTrading/InsiderTradingMaster.Master" CodeBehind="RelativeAdmin.aspx.cs" Inherits="ProcsDLL.InsiderTrading.Relative" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--Start Datetime--%>
    <link href="../assets/global/css/components.min.css" rel="stylesheet" />
    <link href="../assets/global/css/plugins.min.css" rel="stylesheet" />
    <link href="../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <link href="../assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" />
    <link href="../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" />
    <link href="../assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
    <%--End Datetime--%>
    <link href="../assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-content-inner">
        <div class="col-md-12">
            <div class="portlet light portlet-fit" style="margin-left: -15px; margin-right: -15px; min-height: 560px;">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="icon-settings font-red"></i>
                        <span class="caption-subject font-red sbold uppercase">Relative details</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-4 col-lg-4">
                            <label for="Company" style="text-align: center; display: block;">Company</label>
                            <select class="form-control select2" name="Company" id="bindBusinessUnit">
                            </select>
                        </div>
                        <div class="col-md-4 col-lg-4">
                            <label for="User" style="text-align: center; display: block;">User</label>
                            <select class="form-control select2" name="User" id="bindUser">
                            </select>
                        </div>
                        <div class="col-md-2 col-lg-2" style="padding-top: 23px;">
                            <input id="txtGetTadingReport" type="button" style="background-color: limegreen;" class="form-control" value="Run" onclick="fnGetMyDetailsReport();" name="to_date" />
                            <input id="userLoginId" disabled="disabled" type="hidden" class="form-control" name="userLoginId" />
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped table-hover table-bordered" id="tbl-Relative-setup">
                                <thead>
                                    <tr>
                                        <th style="display: none">RELATIVE ID</th>
                                        <th>RELATIVE</th>
                                        <th style="display: none">RELATION ID</th>
                                        <th>RELATION</th>
                                        <th>Email</th>
                                        <th>PAN</th>
                                        <th>IDENTIFICATION</th>
                                        <th>ID #</th>
                                        <th>ADDRESS</th>
                                        <th>STATUS</th>
                                        <th>REMARKS</th>
                                        <th>MODIFIED</th>
                                        <th>VERSION</th>
                                    </tr>
                                </thead>
                                <tbody id="tbdRelativeList">
                                    <tr>
                                    <td style="display: none"></td>
                                    <td></td>
                                    <td style="display: none"></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                        </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalRelativeVersion" tabindex="-1" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog" style="width: 90%;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">Relative</h4>
                </div>
                <div class="modal-body" style="overflow-y: scroll; max-height: 441px;">
                    <div class="portlet-body form">
                        <div class="row">
                            <div id="divRelativeVersion" class="col-md-10">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn default">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script src="../assets/global/scripts/datatable.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
    <script src="../assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
    <script src="../assets/pages/scripts/components-select2.min.js" type="text/javascript"></script>
    <script src="js/Global.js?<%=DateTime.Now %>" type="text/javascript"></script>
    <script src="js/RelativeAdmin.js?<%=DateTime.Now %>" type="text/javascript"></script>
</asp:Content>