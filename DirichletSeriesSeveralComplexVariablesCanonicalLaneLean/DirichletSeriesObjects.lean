import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure DirichletSeriesDatum where
  dimension : ℕ
  coefficients : ℕ → ℂ
  regionOfConvergence : ℂ → Prop
  analyticContinuation : Prop

def primitiveDirichletSeriesDatum : DirichletSeriesDatum := {
  dimension := 2,
  coefficients := λ _ => 0,
  regionOfConvergence := λ z => z.re > 1,
  analyticContinuation := True
}

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
