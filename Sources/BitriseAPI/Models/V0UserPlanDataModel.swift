//
// V0UserPlanDataModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct V0UserPlanDataModel: Codable {

    public var currentPlan: V0PlanDataModel?
    public var pendingPlan: V0PlanDataModel?
    public var trialExpiresAt: String?

    public init(currentPlan: V0PlanDataModel?, pendingPlan: V0PlanDataModel?, trialExpiresAt: String?) {
        self.currentPlan = currentPlan
        self.pendingPlan = pendingPlan
        self.trialExpiresAt = trialExpiresAt
    }

    public enum CodingKeys: String, CodingKey { 
        case currentPlan = "current_plan"
        case pendingPlan = "pending_plan"
        case trialExpiresAt = "trial_expires_at"
    }

}

