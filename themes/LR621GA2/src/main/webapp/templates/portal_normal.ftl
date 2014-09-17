<!DOCTYPE html>

<#include init />

<html class="\${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="\${w3c_language_id}">

<head>
	<title>\${the_title} - \${company_name}</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport" />
	\${theme.include(top_head_include)}

</head>

<body class="\${css_class}">

\${theme.include(body_top_include)}

<#if is_signed_in>
	<@liferay.dockbar />
</#if>

	<div class="container" id="wrapper">
		<div class="viking">
			<h1>
				<a class="\${logo_css_class}" href="\${site_default_url}" title="<@liferay.language key="go-to" /> \${site_name}">
					<img alt="\${logo_description}" height="\${site_logo_height}" src="\${site_logo}" style="height:60px;" />
				</a>
				<span class="site-name" title="<@liferay.language key="go-to" /> \${site_name}">
					\${site_name} - Viking Framework
				</span>
			</h1>

			<p class="viking-byline">Finally " edit -> reload " in Liferay.</p>
			
			<#if the_title?? && the_title!=''>
				<h2 class="page-title">
					<span>\${the_title}</span>
				</h2>
			</#if>
		</div>		

        <#if theme.getSetting("show-navigation") = "true">
		<#if has_navigation || is_signed_in>
			<#include "\${full_templates_path}/navigation.ftl" />
		</#if>
        </#if>

		<#if selectable>
			\${theme.include(content_include)}
		<#else>
			\${portletDisplay.recycle()}

			\${portletDisplay.setTitle(the_title)}

			\${theme.wrapPortlet("portlet.ftl", content_include)}
		</#if>


	</div>

	<footer id="footer" role="contentinfo">
		<p>
		</p>
	</footer>
</div>

\${theme.include(body_bottom_include)}

\${theme.include(bottom_include)}

<style>
	/* 	Add additional stylesheets below 
		feel free to delete all viking styles or html from this file
-------------------------------------------------- */

body {
  position: relative;
 
}

/* Code in headings */
.aui h2 code {
  font-size: 20px;
  font-weight: normal;
}


/* Faded out hr */
hr.soften {
  height: 1px;
  margin: 70px 0;
  background-image: -webkit-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,.1), rgba(0,0,0,0));
  background-image:    -moz-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,.1), rgba(0,0,0,0));
  background-image:     -ms-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,.1), rgba(0,0,0,0));
  background-image:      -o-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,.1), rgba(0,0,0,0));
  border: 0;
}

.viking {
  text-align: center;
  color: #5a5a5a;
}

.viking h1{
  color: #5a5a5a;
  margin: 30px 0 10px;
  font-size: 60px;
  font-weight: 200;
  line-height: 1;
  letter-spacing: -1px;
}

.aui .site-name-viking,
.aui .page-title-viking {
	color: #5a5a5a;
	margin: 0 0 10px;
	font-size: 24px;
	font-weight: 200;
	line-height: 1;
	letter-spacing: -1px;
}

.aui .page-title-viking{
	font-size: 18px;
	font-weight: 600;
	letter-spacing: 0px;
	margin: 16px 0;
}

.viking h2 {
  font-weight: 200;
  margin-top: 20px;
  margin-bottom: 20px;
}

.viking h1 i{
	color: #FF8500;
}
.viking p {
  font-size: 16px;
  line-height: 1.5;
}
.viking .viking-byline {
  margin-bottom: 40px;
  font-size: 20px;
  font-weight: 300;
  line-height: 1.25;
  color: #999;
}
.viking-img {
  display: block;
  margin: 0 auto 30px;
  max-height: 145px;
}


</style>
</body>

</html>