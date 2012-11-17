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
void MREP_701EFD12DA7A45988994B9A33B585A8D(void *, void *);
void MREP_53D99EF5A8124A93A54D58EA8744460E(void *, void *);
void MREP_6DD0B2538B03445D82253F8BBC369320(void *, void *);
void MREP_117414B0944A4F02951794B53F885892(void *, void *);
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
MREP_701EFD12DA7A45988994B9A33B585A8D(self, 0);
MREP_53D99EF5A8124A93A54D58EA8744460E(self, 0);
MREP_6DD0B2538B03445D82253F8BBC369320(self, 0);
MREP_117414B0944A4F02951794B53F885892(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
