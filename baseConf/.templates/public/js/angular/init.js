angular.module('${projectName}App', ["viking.angular"]);

angular.element(document).ready(function() {
	angular.forEach(angular.element(".portlet-boundary"), function (portletSection) {
		if (portletSection.id.match("${projectName}_\$")) {
			angular.bootstrap(portletSection, ['${projectName}App']);	
		};
	});	
});
