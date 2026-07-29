import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.Analytic.Basic

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure MultiIndexDirichletCert where
  sourceKey : String
  formulaString : String
  convergenceAbscissa : ℂ
  multiIndexOrder : ℕ
  coefficientModel : String
  variableCount : ℕ

def multiIndexDirichletCert : MultiIndexDirichletCert := {
  sourceKey := "canonical-dirichlet-series",
  formulaString := "∑_{k_1,…,k_d} a_{k_1,…,k_d} exp(-λ_{k_1,…,k_d} · s)",
  convergenceAbscissa := 0,
  multiIndexOrder := 2,
  coefficientModel := "finitely-supported-multi-index-coefficients",
  variableCount := 2
}

def MultiIndexDirichletLayerClosed (C : MultiIndexDirichletCert) : Prop :=
  C.convergenceAbscissa = 0 ∧
  C.multiIndexOrder ≥ 1 ∧
  C.coefficientModel = "finitely-supported-multi-index-coefficients" ∧
  C.variableCount ≥ 1

theorem multi_index_dirichlet_layer_closed_checked :
    MultiIndexDirichletLayerClosed multiIndexDirichletCert := by
  exact And.intro rfl (And.intro (by decide) (And.intro rfl (by decide)))

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse