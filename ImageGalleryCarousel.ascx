<%@ Control Language="C#" %>
<%@ Register TagPrefix="sf" Namespace="Telerik.Sitefinity.Web.UI.ContentUI" Assembly="Telerik.Sitefinity" %>
<%@ Register TagPrefix="sf" Namespace="Telerik.Sitefinity.Web.UI" Assembly="Telerik.Sitefinity" %>
<%@ Register TagPrefix="sf" Namespace="Telerik.Sitefinity.Web.UI.PublicControls"
    Assembly="Telerik.Sitefinity" %>
<%@ Register TagPrefix="sf" Namespace="Telerik.Sitefinity.Web.UI.PublicControls.BrowseAndEdit" Assembly="Telerik.Sitefinity" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="Telerik.Sitefinity" Namespace="Telerik.Sitefinity.Modules.Comments.Web.UI.Frontend" TagPrefix="comments" %>
<%@ Import Namespace="Telerik.Sitefinity.Web.UI" %>
<%@ Import Namespace="Telerik.Sitefinity.Modules.Comments" %>
<%@ Import Namespace="Telerik.Sitefinity.Libraries.Model" %>
<sf:ResourceLinks id="resourcesLinks2" runat="server">
    <sf:ResourceFile Name="Telerik.Sitefinity.Resources.Themes.Basic.Styles.fancybox.css" Static="true" />
    <sf:ResourceFile JavaScriptLibrary="JQuery" />
    <sf:ResourceFile JavaScriptLibrary="JQueryFancyBox" />
</sf:ResourceLinks>
<sf:CssEmbedControl runat="server" ID="CssEmbedControl1" Url="~/Content/OwlCarousel/owl.carousel.css"></sf:CssEmbedControl >
<sf:CssEmbedControl runat="server" ID="CssEmbedControl2" Url="~/Content/OwlCarousel/owl.theme.css"></sf:CssEmbedControl >
<sf:CssEmbedControl runat="server" ID="CssEmbedControl3" Url="~/Content/GalleryCarousel/styles.css"></sf:CssEmbedControl >
        
<sf:BrowseAndEditToolbar ID="browseAndEditToolbar" runat="server" Mode="Edit"></sf:BrowseAndEditToolbar>
<sf:SitefinityLabel id="title" runat="server" WrapperTagName="h2" HideIfNoText="true" HideIfNoTextMode="Server" CssClass="sfmediaFieldTitle" />
<telerik:RadListView ID="ItemsList" ItemPlaceholderID="ItemsContainer" runat="server" EnableEmbeddedSkins="false" EnableEmbeddedBaseStylesheet="false">
  <LayoutTemplate>
	<div id="" class="owl-carousel">
		<asp:Image ID="ItemsContainer" runat="server"/> 
    </div>    
  </LayoutTemplate>
  <ItemTemplate>
		<div class="item">
			<sf:SitefinityHyperLink
			CssClass="sfLightBox"
			runat="server"
			rel='<%# String.Format("{0}_mainImageGallery", this.ClientID) %>'
			id="singleItemLink" Visible="false"/> 
      	  
			<a id='<%# String.Format("{0}_itemsList_ctrl1_singleItemLink", this.ClientID) %>'  class="sfLightBox" rel='<%# String.Format("{0}_mainImageGallery", this.ClientID) %>' href='<%#Eval("MediaUrl")%>'>
				<img data-src="<%#Eval("MediaUrl")%>" class="lazyOwl"/>
			</a>
		</div>
	</ItemTemplate>
</telerik:RadListView>
<sf:Pager id="pager" runat="server"></sf:Pager>
<sf:JavaScriptEmbedControl runat="server" ID="OwlScripts" ScriptEmbedPosition="InPlace" Url="~/Scripts/owl.carousel.min.js"></sf:JavaScriptEmbedControl>
<sf:JavaScriptEmbedControl runat="server" ID="GalleryScripts" ScriptEmbedPosition="InPlace" Url="~/Scripts/GalleryCarousel/scripts.js"></sf:JavaScriptEmbedControl>
