<cfoutput>
<title>#cb.getContentTitle()#</title>

<!--- ********************************************************************************* --->
<!--- 					META TAGS														--->
<!--- ********************************************************************************* --->
<meta charset="utf-8" /> 
<meta name="generator" 	 	content="ContentBox powered by ColdBox" />
<meta name="robots" 	 	content="index,follow" />
<meta name="viewport" 		content="width=device-width, initial-scale=1">
<meta name="description" 	content="#cb.getContentDescription()#" />
<meta name="keywords" 	 	content="#cb.getContentKeywords()#" />

#cb.getOpenGraphMeta()#

<!--- Base HREF for SES enabled URLs --->
<base href="#cb.siteBaseURL()#" />

<!--- ********************************************************************************* --->
<!--- 					RSS DISCOVERY													--->
<!--- ********************************************************************************* --->
<cfif cb.themeSetting( "rssDiscovery", true )>
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />	
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />
	<!--- RSS Discovery If In View Mode --->
	<cfif cb.isPageView() and cb.getCurrentPage().getAllowComments()>
		<link rel="alternate" type="application/rss+xml" title="Pages's Recent Comments" href="#cb.linkPageRSS( comments=true, page=cb.getCurrentPage() )#" />
	</cfif>
</cfif>

<!--- ********************************************************************************* --->
<!--- 					CSS 															--->
<!--- ********************************************************************************* --->

<!--- Swatch and Skin --->
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/bootstrap.css?v=1" />
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/style.css?v=1" />

<!-- injector:css -->
<link rel="stylesheet" href="#cb.themeRoot()#/includes/css/swipebox.css?v=1">
<!-- endinjector -->

<!---<cfif len( cb.themeSetting( 'cssStyleOverrides' ) )>
<style>
	#cb.themeSetting( 'cssStyleOverrides' )#
</style>	
</cfif>--->

<!--- ********************************************************************************* --->
<!--- 					JAVASCRIPT														--->
<!--- ********************************************************************************* --->
<!-- injector:js -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script src="#cb.themeRoot()#/includes/js/jquery.min.js"></script>
<script src="#cb.themeRoot()#/includes/js/jquery.swipebox.min.js"></script>
<!-- endinjector -->
</cfoutput>
