<cfoutput>
	<cfset bodyHeaderStyle = "">
	<cfset bodyHeaderH1Style = "">
	<div id="body-header" style="#bodyHeaderStyle#" class="back_color">
		<div class="container">
		</div>
	</div>
</div>


	<!--- Body Main --->
	<div id="body-main"  class="back_color content">
		<div class="container">
	 
			<div class="col-sm-9 col-md-9" role="main">
				<div id="wookmark1">
					<!--- ContentBoxEvent --->
					#cb.event( "cbui_preIndexDisplay" )#

					<!--- Are we filtering by category? --->
					<cfif len( rc.category )>
						<div class="alert alert-info">

							<a href="#cb.linkBlog()#" class="btn btn-primary btn-sm pull-right" title="Remove filter and view all entries">Remove Filter</a>
							Category Filtering: '#rc.category#'
						</div>
						<br/>
					</cfif>

					<!--- Are we searching --->
					<cfif len( rc.q )>
						<p class="buttonBar">
							<a class="btn btn-primary" href="#cb.linkBlog()#" title="Clear search and view all entries">Clear Search</a>
						</p>
						<div class="infoBar">
							Searching by: '#rc.q#'
						</div>
						<br/>
					</cfif>
					<!--- Entries displayed here --->
					<div class="row">
						#cb.quickEntries()#
					</div>
					<br/>
				</cfif>
				<!--- Entries displayed here --->
				<div class="row">
					#cb.quickEntries()#
				</div>

					<!--- ContentBoxEvent --->
					#cb.event( "cbui_postIndexDisplay" )#
					<br />

					<cfif prc.entriesCount>
						<div class="row col-md-12 paging">
						 #cb.quickPaging()#
						</div>
				 	</cfif>
			 	</div>
			</div>


			<!--- SideBar --->
			<cfif args.sidebar>
				<div class="col-sm-3 col-md-3" id="blog-sidenav">
					#cb.quickView( view='_blogsidebar', args=args )#
				</div>
			</cfif>

		</div>
	</div>
	<script src="#cb.themeRoot()#/includes/js/wookmark.js"></script>
</cfoutput>

<script type="text/javascript">
	$('.paging').find('.col-xs-12').addClass('col-md-6');
	$('.paging').find('.col-xs-12').last().addClass('customPaging');
 	
 	window.onload = function () {
		var wookmark1 = new Wookmark('#wookmark1', {
	  		outerOffset: 10 
		});
	};
</script>
