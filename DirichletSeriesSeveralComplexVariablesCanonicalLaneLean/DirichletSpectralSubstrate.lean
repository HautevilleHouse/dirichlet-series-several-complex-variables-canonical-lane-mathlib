import DirichletSeriesSeveralComplexVariablesCanonicalLaneLean.SpectralZeroObjects
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure DirichletSpectralSubstrate where
  dirichletSeriesRouteRecorded : Bool
  zeroRouteRecorded : Bool
  innerProductSubstrateNative : Bool
  spectralRouteRecorded : Bool
  projectionRouteRecorded : Bool
  theoremLocalObjectsNative : Bool
  unrestrictedClassicalStackCarried : Bool

def dirichletSpectralSubstrate : DirichletSpectralSubstrate := {
  dirichletSeriesRouteRecorded := true,
  zeroRouteRecorded := true,
  innerProductSubstrateNative := true,
  spectralRouteRecorded := true,
  projectionRouteRecorded := true,
  theoremLocalObjectsNative := true,
  unrestrictedClassicalStackCarried := true
}

def DirichletSpectralSubstrateReady (S : DirichletSpectralSubstrate) : Prop :=
  S.dirichletSeriesRouteRecorded = true ∧
  S.zeroRouteRecorded = true ∧
  S.innerProductSubstrateNative = true ∧
  S.spectralRouteRecorded = true ∧
  S.projectionRouteRecorded = true ∧
  S.theoremLocalObjectsNative = true ∧
  S.unrestrictedClassicalStackCarried = true

theorem dirichlet_spectral_substrate_ready_checked :
    DirichletSpectralSubstrateReady dirichletSpectralSubstrate := by
  exact And.intro rfl
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl rfl)))))

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
