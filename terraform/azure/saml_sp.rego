package wiz

import future.keywords.if

default result := "pass"

now_ns := time.now_ns()

ninety_days_ns := time.parse_duration_ns("2160h") # 90d in hours

result := "skip" if {
	not input.preferredSingleSignOnMode == "saml"
} else := "fail" if {
	credential := input.passwordCredentials[_]
	credential.endDateTime
	end_date_time_ns := time.parse_rfc3339_ns(credential.endDateTime)
	end_date_time_ns - now_ns < ninety_days_ns
}

currentConfiguration := "The passwordCredential will expire within the next 90 days"

expectedConfiguration := "The passwordCredentials object should not expire in the next 90 days"
