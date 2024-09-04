﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit-sender-filter.aspx.cs" Inherits="resllerUserB.edit_sender_filter" %>

<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/Controls/FooterLinks.ascx" TagPrefix="uc1" TagName="FooterLinks" %>
<%@ Register Src="~/Controls/Head.ascx" TagPrefix="uc1" TagName="Head" %>
<%@ Register Src="~/Controls/Loader.ascx" TagPrefix="uc1" TagName="Loader" %>
<%@ Register Src="~/Controls/MenuTop.ascx" TagPrefix="uc1" TagName="MenuTop" %>
<%@ Register Src="~/Controls/SideBar.ascx" TagPrefix="uc1" TagName="SideBar" %>

<uc1:Head runat="server" ID="Head" />
<title>Reseller Admin - Edit Sender ID Filter</title>
</head>
<!--end::Head-->
<!--begin::Body-->
<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
    <form class="d-flex flex-fill" action="#" name="editSenderfilterform" id="editSenderfilterform" runat="server">
        <uc1:Loader runat="server" ID="Loader" />
        <!--begin::Theme mode setup on page load-->
        <script>
            var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
        </script>
        <!--end::Theme mode setup on page load-->
        <!--begin::App-->
        <div class="d-flex flex-column flex-root app-root" id="kt_app_root">
            <!--begin::Page-->
            <div class="app-page flex-column flex-column-fluid" id="kt_app_page">
                <!--begin::Header-->
                <uc1:MenuTop runat="server" ID="MenuTop" parentPageText="Sender ID Filter" childPageText="Edit Sender ID Filter" />
                <!--end::Header-->
                <!--begin::Wrapper-->
                <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                    <!--begin::Sidebar-->
                    <uc1:SideBar runat="server" ID="SideBar" />
                    <!--end::Sidebar-->
                    <!--begin::Main-->
                    <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
                        <!--begin::Content wrapper-->
                        <div class="d-flex flex-column flex-column-fluid">

                            <!--begin::Content-->
                            <div id="kt_app_content" class="app-content flex-column d-flex flex-grow-1 justify-content-between">
                                <!--begin::Content container-->
                                <div id="kt_app_content_container" class="app-container container-fluid">
                                    <!--begin::Row-->
                                    <div class="row">
                                        <div class="col-md-12 mb-md-0 mb-5">
                                            <div class="card shadow-xs p-8 d-flex my-5">
                                                <div class="mb-6">
                                                    <a href="/sender-id-filter.aspx" class="d-flex align-items-center w-fit">
                                                        <span class="me-3">
                                                            <svg class="dynamic-svg-color" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                <path d="M11.67 18.795C11.459 19.0057 11.1731 19.124 10.875 19.124C10.5769 19.124 10.2909 19.0057 10.08 18.795L3.70499 12.42C3.49431 12.209 3.37598 11.9231 3.37598 11.625C3.37598 11.3269 3.49431 11.0409 3.70499 10.83L10.08 4.45498C10.2934 4.25636 10.5755 4.14821 10.8669 4.15324C11.1584 4.15828 11.4366 4.27611 11.643 4.48198C11.8489 4.68838 11.9667 4.96656 11.9717 5.25803C11.9768 5.54951 11.8686 5.83159 11.67 6.04498L7.21499 10.5H18.375C18.6734 10.5 18.9595 10.6185 19.1705 10.8295C19.3815 11.0405 19.5 11.3266 19.5 11.625C19.5 11.9233 19.3815 12.2095 19.1705 12.4205C18.9595 12.6315 18.6734 12.75 18.375 12.75H7.21499L11.67 17.205C11.8807 17.4159 11.999 17.7019 11.999 18C11.999 18.2981 11.8807 18.584 11.67 18.795Z" fill="#121212"></path>
                                                            </svg>
                                                        </span>
                                                        <span class="fs-14 text-dark">Back to Sender ID Filter list</span>
                                                    </a>
                                                </div>
                                                <!--begin::Page title-->
                                                <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                    <div>
                                                        <!--begin::Title-->
                                                        <h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bold my-5">Edit Sender ID Filter</h1>
                                                        <!--end::Title-->
                                                    </div>
                                                </div>
                                                <!--end::Page title-->
                                                <div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="mb-5">
                                                                <label for="senderName" class="form-label required">Sender Name</label>
                                                                <input class="form-control form-custom-input" value="jessica" type="text" name="senderName" id="senderName" runat="server" placeholder="Enter new sender name to filter">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div class="mb-8">
                                                                <label for="senderStatus" class="form-label required">Status</label>
                                                                <select runat="server" name="senderStatus" id="senderStatus" class="form-select form-custom-select">
                                                                    <option value="blocker">Blocked</option>
                                                                    <option value="idle">Idle</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <label for="username" class="form-label required mb-2">Username</label>
                                                            <div class="d-flex align-items-center mb-3">
                                                                <div class="form-check me-5">
                                                                    <input class="form-check-input" type="radio" value="allUsers" id="AllUsers" name="username" checked="" runat="server">
                                                                    <label class="form-check-label" for="AllUsers">
                                                                        All
                                                                    </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio" value="CustomUsername" id="customUser" name="username" runat="server">
                                                                    <label class="form-check-label" for="customUser">
                                                                        Custom username
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <input class="form-control form-custom-input" value="" type="text" name="filterSenderName" id="filterSenderName" runat="server" placeholder="Enter username here..." disabled="disabled">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <asp:Button ID="EditSenderFilterBtn" runat="server" Text="Edit sender filter"
                                                                CssClass="btn btn-grad-1 py-2 px-6 rounded-1 ms-auto"
                                                                OnClientClick="editSenderFilterSubmit('EditSenderFilterBtn'); return false;" OnClick="EditSenderFilterBtn_Click"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <!--end::Content container-->
                                    </div>
                                    <!--end::Content-->
                                </div>
                                <!--end::Content wrapper-->
                                <!--begin::Footer-->
                                <uc1:Footer runat="server" ID="footer" />
                                <!--end::Footer-->
                            </div>
                            <!--end:::Main-->
                        </div>
                        <!--end::Wrapper-->
                    </div>
                    <!--end::Page-->
                </div>
                <!--end::App-->
            </div>
        </div>

        <uc1:FooterLinks runat="server" ID="footerLinks" />
        <script src="assets/js/edit-sender-filter.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>