#import "ABI27_0_0EXGLObject.h"

@implementation ABI27_0_0EXGLObject

- (instancetype)initWithConfig:(NSDictionary *)config
{
  if ((self = [super init])) {
    _exglCtxId = [config[@"exglCtxId"] unsignedIntValue];
    _exglObjId = UEXGLContextCreateObject(_exglCtxId);
  }
  return self;
}

- (void)dealloc
{
  if (_exglObjId != 0) {
    UEXGLContextDestroyObject(_exglCtxId, _exglObjId);
  }
}

@end

