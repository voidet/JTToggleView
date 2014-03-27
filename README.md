##JTToggleView

A simple UIView that acts like a checkbox.

##Usage
Simply add a UIView to your storyboard, class it as JTToggleView then hook up the appropriate outlets. The view will automatically handle tap events and you can set the toggle via:

	[self.toggleView toggleOn];
	// OR
	[self.toggleView toggleOff];
	
To figure out if the toggle is on or off you can use:

	if (self.toggleView.isOn) {
		// the toggle is on
	}
	
## Design
Ships with a design similar to 