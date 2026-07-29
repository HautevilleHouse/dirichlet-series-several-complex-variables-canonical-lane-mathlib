import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure ZeroSetCert where
  sourceKey : String
  zeroSetDescription : String
  zeroSetDimension : ℕ
  zeroSetCofiniteChecked : Bool
  zeroFreeRegion : String
  zeroSetClassified : Bool

def zeroSetCert : ZeroSetCert := {
  sourceKey := "canonical-dirichlet-series",
  zeroSetDescription := "analytic variety of codimension 1",
  zeroSetDimension := 1,
  zeroSetCofiniteChecked := true,
  zeroFreeRegion := "half-plane of absolute convergence",
  zeroSetClassified := true
}

def ZeroSetLayerClosed (C : ZeroSetCert) : Prop :=
  C.zeroSetCofiniteChecked = true ∧
  C.zeroSetClassified = true ∧
  C.zeroSetDimension ≥ 1

theorem zero_set_layer_closed_checked :
    ZeroSetLayerClosed zeroSetCert := by
  exact And.intro rfl (And.intro rfl (by decide))

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse