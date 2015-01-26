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




<div class="viking top-header-bar clearfix">
	<h1>
		<a class="\${logo_css_class}" href="\${site_default_url}" title="<@liferay.language key="go-to" /> \${site_name}">
			<img alt="\${logo_description}" height="\${site_logo_height}" src="\${site_logo}" />
		</a>
		<!-- uncomment to get sitename
		<span class="site-name" title="<@liferay.language key="go-to" /> \${site_name}">
			\${site_name}
		</span>
		-->
	</h1>

		<p class="viking-byline"> 
			<span>liferay, </span>
			<span>create, </span>
			<span>edit, </span>
			<span>reload.</span>
		</p>
	
		<#-- <#if the_title?? && the_title!=''>
			<h2 class="page-title">
				<span>\${the_title}</span>
			</h2>
		</#if> -->
	</div>		
	<div class="container" id="wrapper">
		<#include "\${full_templates_path}/navigation.ftl" />
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
</body>

</html>