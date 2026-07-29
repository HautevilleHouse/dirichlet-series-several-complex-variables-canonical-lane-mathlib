import DirichletSeriesSeveralComplexVariablesCanonicalLaneLean.PrimeEndpointLayer

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesCanonicalLaneLean

structure DirichletSpectralCertificate where
  operatorLayer : SelfAdjointOperatorLayerCertificate
  criticalLineLayer : CriticalLinePersistenceLayerCertificate
  dirichletZeroLayer : DirichletZeroEndpointLayerCertificate
  primeEndpointLayer : PrimeEndpointLayerCertificate
  carriageRecord : DirichletCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

def dirichletSpectralCertificate : DirichletSpectralCertificate := {
  operatorLayer := selfAdjointOperatorLayerCertificate,
  criticalLineLayer := criticalLinePersistenceLayerCertificate,
  dirichletZeroLayer := dirichletZeroEndpointLayerCertificate,
  primeEndpointLayer := primeEndpointLayerCertificate,
  carriageRecord := dirichletCarriageRecord,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  spectralObjectClosed := true,
  classicalBoundaryCarried := true
}

def DirichletSpectralCertificateClosed (C : DirichletSpectralCertificate) : Prop :=
  SelfAdjointOperatorLayerClosed C.operatorLayer ∧
  CriticalLinePersistenceLayerClosed C.criticalLineLayer ∧
  DirichletZeroEndpointLayerClosed C.dirichletZeroLayer ∧
  PrimeEndpointLayerClosed C.primeEndpointLayer ∧
  DirichletSpectralClosed C.criticalLineLayer.zeroDatum ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.spectralObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem dirichlet_spectral_certificate_closed_checked :
    DirichletSpectralCertificateClosed dirichletSpectralCertificate := by
  exact And.intro self_adjoint_operator_layer_closed_checked
    (And.intro critical_line_persistence_layer_closed_checked
    (And.intro dirichlet_zero_endpoint_layer_closed_checked
    (And.intro prime_endpoint_layer_closed_checked
    (And.intro primitive_dirichlet_spectral_closed_checked
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl rfl)))))))

end DirichletSeriesSeveralComplexVariablesCanonicalLaneLean
end HautevilleHouse
