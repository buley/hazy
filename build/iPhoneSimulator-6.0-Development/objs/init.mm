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
void MREP_FAE0AFD23B3443B692AEF78E3FEB9709(void *, void *);
void MREP_095FFDA58F804FE4A714945DD6035D8B(void *, void *);
void MREP_F5F26098B78A444D9CEB8E39FD41D310(void *, void *);
void MREP_5717904AC63A490790F0AAEB5698495B(void *, void *);
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
MREP_FAE0AFD23B3443B692AEF78E3FEB9709(self, 0);
MREP_095FFDA58F804FE4A714945DD6035D8B(self, 0);
MREP_F5F26098B78A444D9CEB8E39FD41D310(self, 0);
MREP_5717904AC63A490790F0AAEB5698495B(self, 0);
MREP_894E3284BAAA4BB3A362575D54E0187B(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
