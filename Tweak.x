#import <Foundation/Foundation.h>
#import <substrate.h>

bool (*orig_security_check)(void);
bool new_security_check() {
    return false;
}

%ctor {
    NSLog(@"[AryanBypass] !تم تفعيل كود الحماية بنجاح");
    MSHookFunction((void *)(0x100000000), (void *)new_security_check, (void **)&orig_security_check);
}
