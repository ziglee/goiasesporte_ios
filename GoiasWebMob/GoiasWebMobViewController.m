#import "GoiasWebMobViewController.h"

@implementation GoiasWebMobViewController

@synthesize webView, loadingImageView;

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erro" message:@"Não foi possível carregar. Favor verifique sua conexão" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
    [alert release];
}

- (void) webViewDidStartLoad:(UIWebView *)webView {
    
    [self.view addSubview:self.loadingImageView];
}

- (void) webViewDidFinishLoad:(UIWebView *)webView {
    
    [self.loadingImageView removeFromSuperview];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    UIImageView *theLoadingImageView = [[UIImageView alloc] initWithFrame:webView.frame];
    theLoadingImageView.image = [UIImage imageNamed:@"loading@2x.png"];
    self.loadingImageView = theLoadingImageView;
    [theLoadingImageView release];
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://goiaswebmob.heroku.com/html/index.html"]]];
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)dealloc {
    [webView release];
    [super dealloc];
}

@end
