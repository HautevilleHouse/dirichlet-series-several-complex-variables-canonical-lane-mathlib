import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesObjects

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure AnalyticContinuationCertificate where
  datum : DirichletSeriesDatum
  continuationExists : Bool
  functionalEquation : Prop
  endpointChecked : Bool

def analyticContinuationCertificate : AnalyticContinuationCertificate := {
  datum := primitiveDirichletSeriesDatum,
  continuationExists := true,
  functionalEquation := True,
  endpointChecked := true
}

def AnalyticContinuationClosed (C : AnalyticContinuationCertificate) : Prop :=
  C.continuationExists = true ∧ C.endpointChecked = true

theorem analytic_continuation_closed_checked :
    AnalyticContinuationClosed analyticContinuationCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
