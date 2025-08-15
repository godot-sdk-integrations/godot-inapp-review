//
// © 2024-present https://github.com/cengiz-pz
//
#import <Foundation/Foundation.h>

#import "godot_plugin.h"
#import "inapp_review_plugin.h"
#import "core/config/engine.h"

InappReviewPlugin *plugin;

void InappReviewPlugin_init() {
	plugin = memnew(InappReviewPlugin);
	Engine::get_singleton()->add_singleton(Engine::Singleton("InappReviewPlugin", plugin));
}

void InappReviewPlugin_deinit() {
	if (plugin) {
		memdelete(plugin);
	}
}
