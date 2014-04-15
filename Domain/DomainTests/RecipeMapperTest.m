#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "Recipe+Mapper.h"

SpecBegin(RecipeMapperSpecTests)


describe(@"Recipe creation", ^{
    
    it(@"should not return object correctly if not data passed in", ^{
        Recipe *recipe = [Recipe build:nil];
        expect(recipe).to.beNil();
    });
    
    
    it(@"should return valid object if data is passed in", ^{
        Recipe *recipe = [Recipe build:[[NSDictionary alloc] init]];
        expect(recipe).toNot.beNil();
    });
    
    it(@"should return valid object with name correctly mapped", ^{
        NSDictionary *data = [[NSDictionary alloc] initWithObjectsAndKeys:@"nick", @"name", nil];
        Recipe *recipe = [Recipe build:data];
        expect(recipe.name).to.equal(@"nick");
    });
    
});

SpecEnd