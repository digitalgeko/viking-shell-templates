angular.module('viking.angular', [])

.factory('$viking', function() {
    return {
    	populate: function(portletId, scope) {
    		_.assign(scope, VK.getPortletData(portletId));
    	}
    };
});	