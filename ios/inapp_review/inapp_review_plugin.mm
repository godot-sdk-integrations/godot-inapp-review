//
// © 2024-present https://github.com/cengiz-pz
//
#import <Foundation/Foundation.h>

#include "core/config/project_settings.h"

#import "inapp_review_plugin.h"
#import "inapp_review_plugin-Swift.h"


String const REVIEW_INFO_GENERATED_SIGNAL = "review_info_generated";
String const REVIEW_INFO_GENERATION_FAILED_SIGNAL = "review_info_generation_failed";
String const REVIEW_FLOW_LAUNCHED_SIGNAL = "review_flow_launched";
String const REVIEW_FLOW_LAUNCH_FAILED_SIGNAL = "review_flow_launch_failed";


/*
 * Bind plugin's public interface
 */
void InappReviewPlugin::_bind_methods() {
	ClassDB::bind_method(D_METHOD("generate_review_info"), &InappReviewPlugin::generate_review_info);
	ClassDB::bind_method(D_METHOD("launch_review_flow"), &InappReviewPlugin::launch_review_flow);

	ADD_SIGNAL(MethodInfo(REVIEW_INFO_GENERATED_SIGNAL));
	ADD_SIGNAL(MethodInfo(REVIEW_INFO_GENERATION_FAILED_SIGNAL));
	ADD_SIGNAL(MethodInfo(REVIEW_FLOW_LAUNCHED_SIGNAL));
	ADD_SIGNAL(MethodInfo(REVIEW_FLOW_LAUNCH_FAILED_SIGNAL));
}

// Only for platform parity.
void InappReviewPlugin::generate_review_info() {
	NSLog(@"InappReviewPlugin generate_review_info");

	emit_signal(REVIEW_INFO_GENERATED_SIGNAL);
}

void InappReviewPlugin::launch_review_flow() {
	NSLog(@"InappReviewPlugin launch_review_flow");
	[SwiftClass launch_review_flow];

	emit_signal(REVIEW_FLOW_LAUNCHED_SIGNAL);
}

InappReviewPlugin::InappReviewPlugin() {
	NSLog(@"InappReviewPlugin constructor");
}

InappReviewPlugin::~InappReviewPlugin() {
	NSLog(@"InappReviewPlugin destructor");
}
