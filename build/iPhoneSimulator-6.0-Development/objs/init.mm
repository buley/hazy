#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_F482A5369D4649E19DBF6B785EBF0051(void *, void *);
void MREP_39FBE38FD9F148BFB7EFBA0A566A5983(void *, void *);
void MREP_F1066B80E4C149D68D2B6C72CA7AE88D(void *, void *);
void MREP_C3B3BFB95AA0462EBC0730C0063C1B17(void *, void *);
void MREP_894E3284BAAA4BB3A362575D54E0187B(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_F482A5369D4649E19DBF6B785EBF0051(self, 0);
MREP_39FBE38FD9F148BFB7EFBA0A566A5983(self, 0);
MREP_F1066B80E4C149D68D2B6C72CA7AE88D(self, 0);
MREP_C3B3BFB95AA0462EBC0730C0063C1B17(self, 0);
MREP_894E3284BAAA4BB3A362575D54E0187B(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
