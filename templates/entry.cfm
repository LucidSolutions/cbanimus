<cfoutput>
	<cfset content = Left(#entry.renderContent()#,200)/>
	<div class="col-md-4 mt10" id="post_#entry.getContentID()#">
		<div class="l_g_r">
			<div class="dapibus">
				<h2>#entry.getTitle()#</h2>
				<p class="adm">Posted by <a href="##">#entry.getAuthorName()#</a>  |  #entry.getDisplayPublishedDate()#</p>
				<a href="#cb.linkEntry(entry)#"><img src="#entry.getFeaturedImage()#" class="img-responsive" alt=""></a>
				<p>#content#</p>
				<a href="#cb.linkEntry(entry)#" class="link">Read More</a>
				<div style="clear:both;"></div>
			</div>
		</div>
	</div>
</cfoutput>
