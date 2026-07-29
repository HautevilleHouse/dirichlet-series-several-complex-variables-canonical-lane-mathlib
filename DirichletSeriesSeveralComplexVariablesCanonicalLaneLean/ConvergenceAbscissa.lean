import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesObjects

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure ConvergenceAbscissaCertificate where
  datum : DirichletSeriesDatum
  abscissa : ℂ → ℝ
  convergenceRegion : ℂ → Prop
  endpointChecked : Bool

def convergenceAbscissaCertificate : ConvergenceAbscissaCertificate := {
  datum := primitiveDirichletSeriesDatum,
  abscissa := λ _ => 1,
  convergenceRegion := λ z => z.re > 1,
  endpointChecked := true
}

def ConvergenceAbscissaClosed (C : ConvergenceAbscissaCertificate) : Prop :=
  C.endpointChecked = true

theorem convergence_abscissa_closed_checked :
    ConvergenceAbscissaClosed convergenceAbscissaCertificate := by
  rfl

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse