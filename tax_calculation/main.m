#import<Foundation/Foundation.h>
#import "Goods.h"
#import "Calculate.h"

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Calculate *calc = [[Calculate alloc]init];
	Goods *chair = [[Goods alloc]init];
	Goods *carrot = [[Goods alloc]init];
	
	[chair setType:@"finished goods"];
	[chair setAmount:2000.0];
	
	[carrot setType:@"groceries"];
	[carrot setAmount:1000.0];
	
	NSLog(@"\nAmount without tax for chair: %.3f\nAmount with tax for chair: %.3f", [chair amount], [calc calcTax:chair]);
	NSLog(@"\nAmount without tax for carrot: %.3f\nAmount with tax for carrot: %.3f", [carrot amount], [calc calcTax:carrot]);
	
	[pool release];
	
	return 0;
}