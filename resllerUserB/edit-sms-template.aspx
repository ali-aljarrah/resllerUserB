<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit-sms-template.aspx.cs" Inherits="resllerUserB.edit_sms_template" %>

<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>


<uc1:head runat="server" ID="head" />

<title>Reseller User | Edit SMS Templates</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <form class="d-flex flex-fill" id="temp_form" name="temp_form" runat="server">
        <uc1:loader runat="server" ID="loader" />
        <!--begin::Theme mode setup on page load-->
        <script>var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
        <!--end::Theme mode setup on page load-->

        <!--begin::App-->
        <div class="d-flex flex-column flex-root app-root" id="kt_app_root">
            <!--begin::Page-->
            <div class="app-page flex-column flex-column-fluid" id="kt_app_page">

                <!--begin::Header-->
                <uc1:menuTop runat="server" ID="menuTop" parentPageText="SMS Templates" childPageText="Edit SMS Template" />
                <!--end::Header-->
                <!--begin::Wrapper-->
                <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                    <!--begin::Sidebar-->
                    <uc1:sideBar runat="server" ID="sideBar" />
                    <!--end::Sidebar-->

                    <!--begin::Main-->
                    <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
                        <!--begin::Content wrapper-->
                        <div class="d-flex flex-column flex-column-fluid">

                            <!--begin::Content-->
                            <div id="kt_app_content" class="app-content flex-column-fluid">
                                <!--begin::Content container-->
                                <div id="kt_app_content_container" class="app-container container-fluid">
                                    <!--begin::Row-->                                    
                                    <div class="row">
                                        <div class="col-md-12 mb-md-0 mb-5">
                                            <div class="card shadow-xs p-8 d-flex my-5">
                                                <div class="mb-6">
                                                    <a href="/sms_temp.aspx" class="d-flex align-items-center w-fit">
                                                        <span class="me-3">
                                                            <svg class="dynamic-svg-color" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                <path d="M11.67 18.795C11.459 19.0057 11.1731 19.124 10.875 19.124C10.5769 19.124 10.2909 19.0057 10.08 18.795L3.70499 12.42C3.49431 12.209 3.37598 11.9231 3.37598 11.625C3.37598 11.3269 3.49431 11.0409 3.70499 10.83L10.08 4.45498C10.2934 4.25636 10.5755 4.14821 10.8669 4.15324C11.1584 4.15828 11.4366 4.27611 11.643 4.48198C11.8489 4.68838 11.9667 4.96656 11.9717 5.25803C11.9768 5.54951 11.8686 5.83159 11.67 6.04498L7.21499 10.5H18.375C18.6734 10.5 18.9595 10.6185 19.1705 10.8295C19.3815 11.0405 19.5 11.3266 19.5 11.625C19.5 11.9233 19.3815 12.2095 19.1705 12.4205C18.9595 12.6315 18.6734 12.75 18.375 12.75H7.21499L11.67 17.205C11.8807 17.4159 11.999 17.7019 11.999 18C11.999 18.2981 11.8807 18.584 11.67 18.795Z" fill="#121212"></path>
                                                            </svg>
                                                        </span>
                                                        <span class="fs-14 text-dark">Back to SMS Templates</span>
                                                    </a>
                                                </div>
                                                <!--begin::Page title-->
                                                <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                    <div>
                                                        <!--begin::Title-->
                                                        <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold my-5">Edit SMS Template</h1>
                                                        <!--end::Title-->
                                                    </div>
                                                </div>
                                                <!--end::Page title-->              
                                                <div>
                                                    <input type="hidden" value="{F36498C6-1685-4761-93FE-FD07E7589C4F}" id="token" name="token">
                                                    <div class="mb-10">
                                                        <label for="temp_name" class="form-label fs-14 color-black-1 required">Template name</label>
                                                        <input value="" type="text" name="temp_name" id="temp_name" runat="server" class="form-control form-custom-input" placeholder="Template name" data-bs-toggle="tooltip" data-bs-placement="top" title="Please enter template name here">
                                                    </div>
                                                    <div class="mb-10">
                                                        <label for="temp_msg" class="form-label fs-14 color-black-1 required">Template message</label>
                                                        <textarea maxlength="766" type="text" cols="5" rows="5" name="temp_msg" id="temp_msg" runat="server" class="form-control form-custom-textarea" data-bs-toggle="tooltip" data-bs-placement="top" title="Please enter template message body here" placeholder="Write message here..."></textarea>
                                                    </div>
                                                    <div class="text-end">
                                                        <input type="hidden" name="savetemp" id="savetemp" value="savetemp">
                                                        <asp:Button ID="EditSMSTemplateBtn" runat="server" Text="Check"
                                                            CssClass="btn btn-grad-1 py-3 px-9 rounded-3"
                                                            OnClientClick="editTemplate('EditSMSTemplateBtn'); return false;" OnClick="EditSMSTemplateBtn_Click" />
                                                    </div>
                                                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                                                </div>
                                            </div>

                                        </div>
                                        <!--end::Content container-->
                                    </div>
                                    <!--end::Row-->
                                </div>
                                <!--end::Content container-->
                            </div>
                            <!--end::Content-->
                        </div>
                        <!--end::Content wrapper-->
                        <!--begin::Footer-->
                        <uc1:footer runat="server" ID="footer" />
                        <!--end::Footer-->
                    </div>
                    <!--end:::Main-->
                </div>
                <!--end::Wrapper-->
            </div>
            <!--end::Page-->
        </div>
        <!--end::App-->

        <uc1:footerLinks runat="server" ID="footerLinks" />
        <script src="assets/js/edit-sms-template.js"></script>
    </form>
</body>
<!--end::Body-->
</html>

