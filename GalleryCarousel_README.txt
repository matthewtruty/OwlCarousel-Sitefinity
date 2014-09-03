=== Image Gallery + Owl Slider ===
Contributors: Matthew Truty, David Federspiel
Tested on Siteifinity: 7.1.5200.0
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Turns a Sitefinity image gallery widget into an image carousel with LazyLoad and FancyBox.

== Description ==
This template allows you to use the power of the native Image gallery widget to create image carousels. 
You can point the widget to specific image galleries in Sitefinity, limit the number of images in the carousel,
and much more.  

== Changelog ==

= 1.0.1 =
* Updated steps
* Added documentation 

= 1.0.0 =
* Initial release.

== Applying external widget template == 
To apply the external carousel widget template to an image gallery widget, perform the following:

1. Move the ImageGalleryCarousel.ascx file located under Content\ImageGalleryCarousel.ascx to your Website Template as follows:
   - ~/App_Data/Sitefinity/WebsiteTemplates/<Your template name>/WidgetTemplates/GalleryCarousel/ImageGalleryCarousel.ascx.
2. Go to Sitefinity’s backend (http://<yoursite>/sitefinity)
3. Click Pages.
4. Click the page that you want to edit.
5. Add the Image gallery widget to your page and open the advanced editing mode.
	- For more information about adding and configuring widgets, see http://www.sitefinity.com/documentation/documentationarticles/user-guide/widgets.
6. Click ControlDefinition » Views.
7. Select the ImagesFrontendThumbnailsListSimple view for the widget.
8. In field TemplatePath, enter the path to the widget template. 
	- Change your template path: ~/App_Data/Sitefinity/WebsiteTemplates/<Your template name>/WidgetTemplates/GalleryCarousel/ImageGalleryCarousel.ascx.
	- Make sure the ImageGalleryCarousel.ascx User Control was moved to the WidgetTemplates directory as shown in step 1.
9.  Click Save.
10. The advanced editing mode closes.
11. Click the Image Gallery "Settings" tab. Screenshot: http://bit.ly/1B9MKdC
12. Select the the "Simple list" image gallery type. Screenshot: http://bit.ly/1A1GeDq
13. Click Save.
14. The image gallery widget closes.
15. To apply the changes to the page, click Publish. 
16	To modify the slider styles, edit styles.css found under Content/GalleryCarousel/styles.css
17. To modify the slider configuration, edit scripts.js found under Scripts/GalleryCarousel/scripts.js
18. To add multiple image gallery carousels to the same page, repeat steps 1-17 with a new Image gallery 
	widget or duplicate an existing Image gallery widget that has the Gallery Carousel template applied to it.
	When you apply this widget template it only overrides that one widget instance on the page, and doesn't alter
	the ImagesFrontendThumbnailsListSimple template at all so that it can be used if needed. 

===================================================================================================================
NOTE: A possible reason for an error message in the layout editor can be an incorrect path to the widget template.
===================================================================================================================

== Links & Documentation ==

Customization documentation for JS & CSS can be found at: 
	- http://owlgraphic.com/owlcarousel/#more-demos
	- http://owlgraphic.com/owlcarousel/index.html#customizing

A detailed explanation of how the slider interacts within Sitefinity can be found at: 
	- https://gist.github.com/matthewtruty0093/82294787ccbdac148dae

An example of how the JS for multiple carousels on one page is configured can be found at: 
	- http://jsfiddle.net/L4th38zk/
	
	
== Important Notes ==
- The Sitefinity widget template file is configured to work with the folder structure documented [below](#folder-structure). If you change the folder structure or file names in any way, you will need to update the [widget template file](#file-imagegallerycarousel-ascx).

== FYI's (already configured, but good to know info) == 
- The default Sitefinity Image gallery template comes with a SitefinityHyperLink control. You need leave the visibility of this control set to false so that the proper OwlCarousel HTML markup can be configured. (Visible="false")
- If you want to use the built-in FancyBox feature that comes with Sitefinity on a gallery template type that doesn't come defaulted with FancyBox, you need to include the FancyBox resources in your template and call FancyBox using jQuery: 
    C#:
    <sf:ResourceLinks id="resourcesLinks2" runat="server" UseEmbeddedThemes="true" Theme="Default">
    <sf:ResourceFile Name="Telerik.Sitefinity.Resources.Themes.Basic.Styles.fancybox.css" Static="true" />
    <sf:ResourceFile JavaScriptLibrary="JQueryFancyBox" /></sf:ResourceLinks>
    
    JS: 
    // call Fancy Box
    $(".item a").fancybox();`	

== Folder Structure ==

App_Data
	Sitefinity
		WebsiteTemplates
			<Your Template Name>
				<Your Template Folders>
				WidgetTemplates
					GalleryCarousel
						ImageGalleryCarousel.ascx
						
Scripts
	GalleryCarousel
		Scripts.js
	owl.carousel
	owl.carousel.min.js

Content
	GalleryCarousel
		styles.css
	OwlCarousel
		AjaxLoader.gif
		grabbing.png
		owl.carousel.css
		owl.theme.css
		owl.transitions.css
	
	