def build(b) {
	b.site("Guest") {
		layout ("Home") {
			friendlyURL "/home"
			override true
			isPrivateLayout false
			layoutTemplateId "1_column"
			column (1) {
				portlet "${projectName.toLowerCase()}portlet_WAR_${projectName}"
			}
		}
	}
}