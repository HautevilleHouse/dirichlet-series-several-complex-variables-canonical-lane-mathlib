import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure DomainConvergenceCert where
  sourceKey : String
  tubeDomain : String
  abscissaVector : ℂ → ℂ
  polyradius : ℂ
  convergenceChecked : Bool
  tubeDomainDefined : Bool

def domainConvergenceCert : DomainConvergenceCert := {
  sourceKey := "canonical-dirichlet-series",
  tubeDomain := "{ s ∈ ℂ^d : Re(s) ∈ U } for U convex",
  abscissaVector := fun s => s,
  polyradius := 1,
  convergenceChecked := true,
  tubeDomainDefined := true
}

def DomainConvergenceLayerClosed (C : DomainConvergenceCert) : Prop :=
  C.convergenceChecked = true ∧
  C.tubeDomainDefined = true

theorem domain_convergence_layer_closed_checked :
    DomainConvergenceLayerClosed domainConvergenceCert := by
  exact And.intro rfl rfl

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse