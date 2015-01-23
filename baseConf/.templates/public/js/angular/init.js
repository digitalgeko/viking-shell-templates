angular.module('${projectName}App', ["viking.angular"]);

angular.element(document).ready(function() {
	angular.forEach(angular.element(".portlet"), function (portletSection) {
		if (portletSection.id.match("${projectName}$")) {
			angular.bootstrap(portletSection, ['${projectName}App']);	
		};
	});	
});
