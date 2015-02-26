angular.module('${projectName}App', ["viking.angular"]);

angular.element(document).ready(function() {
	angular.forEach(angular.element(".portlet-boundary"), function (portletSection) {
		if (!angular.element(portletSection).hasClass("ng-scope") && portletSection.id.match("WAR_${projectName}_.*\$")) {
			angular.bootstrap(portletSection, ['${projectName}App']);	
		};
	});	
});

