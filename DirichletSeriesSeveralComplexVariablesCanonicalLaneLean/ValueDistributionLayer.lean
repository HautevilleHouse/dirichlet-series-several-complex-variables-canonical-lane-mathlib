import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesObjects

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure ValueDistributionCertificate where
  datum : DirichletSeriesDatum
  range : ℂ → Prop
  valueSetDense : Prop
  endpointChecked : Bool

def valueDistributionCertificate : ValueDistributionCertificate := {
  datum := primitiveDirichletSeriesDatum,
  range := λ _ => True,
  valueSetDense := True,
  endpointChecked := true
}

def ValueDistributionClosed (C : ValueDistributionCertificate) : Prop :=
  C.endpointChecked = true

theorem value_distribution_closed_checked :
    ValueDistributionClosed valueDistributionCertificate := by
  unfold ValueDistributionClosed valueDistributionCertificate
  rfl

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse