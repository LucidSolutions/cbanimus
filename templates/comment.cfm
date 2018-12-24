<cfoutput>



<div class="comments-main" id="comment_#comment.getCommentID()#">


	<div class="col-md-2 cmts-main-left">
		<a class="" href="JavaScript:void(0);">#cb.quickAvatar(author=comment.getAuthorEmail(),size=106)#</a>
	</div>
	<div class="col-md-10 cmts-main-right">
		<h5>#comment.getAuthor()#</h5>
		<p>#comment.getContent()#</p>
		<div class="cmts">
			<div class="cmnts-left">
				<p>#comment.getDisplayCreatedDate()#</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="clearfix"></div>
</div>

</cfoutput>
