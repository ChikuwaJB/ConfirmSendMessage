%hook MessageViewController
-(void)sendMessageWithText:(id)arg1{
	UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Confirm" message:@"Are you sure you want to send message?" preferredStyle:UIAlertControllerStyleAlert];
	[alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
		%orig;
	}]];
	[alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
	}]];
	[self presentViewController:alertController animated:YES completion:nil];
}
%end