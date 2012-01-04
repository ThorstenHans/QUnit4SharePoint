<%@ Assembly Name="QUnit4SharePoint, Version=1.0.0.0, Culture=neutral, PublicKeyToken=c423effaf49a01b5" %>
<%@ Import Namespace="Microsoft.SharePoint.ApplicationPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleTestSuite.aspx.cs" Inherits="QUnit4SharePoint.Layouts.QUnit4SharePoint.SampleTestSuite" DynamicMasterPageFile="~masterurl/default.master" %>

<asp:Content ID="PageHead" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
<!-- Link the QUnit CSS file-->
<link type="text/css" rel="Stylesheet" href="/_layouts/QUnit4SharePoint/qunit.css" />
<!-- If jQuery is present in your SharePoint environment remove it here -->
<script type="text/javascript" src="/_layouts/QUnit4SharePoint/jquery-1.7.1.min.js"></script>
<!-- Load QUnit -->
<script type="text/javascript" src="/_layouts/QUnit4SharePoint/qunit.js"></script>

<!-- QUnit could be included directly or loaded as I did w/ jQuery and QUnit -->
<!-- <script type="text/javascript" src="/_layouts/QUnit4SharePoint/yourJScode.js"></script> -->
<script type="text/javascript">
    $(document).ready(function () {
        module("First TestModule");

        test("First test", function () {
            ok(true, "First test should pass");
        });

        test("multiple assertions", function () {
            expect(2);
            equal(true, true, "1st is ok");
            equal(false, true, "2nd isn't ok");
        });

        module("2nd TestModule");

        test("A test for the 2nd module", function () {
            notEqual({}, null, "Test should pass");
        });

    });
</script>
</asp:Content>

<asp:Content ID="Main" ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <div id="qunit"><h1 id="qunit-header">QUnit example</h1>
    <h2 id="qunit-banner"></h2>
    <div id="qunit-testrunner-toolbar"></div>
    <h2 id="qunit-userAgent"></h2>
    <ol id="qunit-tests"></ol>
    <div id="qunit-fixture"></div>
    </div>
</asp:Content>

<asp:Content ID="PageTitle" ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
QUnit4SharePoint - QUnit Sample TestSuite
</asp:Content>

<asp:Content ID="PageTitleInTitleArea" ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server" >
QUnit4SharePoint - QUnit Sample TestSuite
</asp:Content>
