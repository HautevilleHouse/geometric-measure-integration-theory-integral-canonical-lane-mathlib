import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure FedererCurrentPackage where
  ambientSpace : Type u
  metricAmbient : MetricSpace ambientSpace
  currentDimension : ℕ
  current : Type v
  boundaryCurrent : Type w
  massFinite : Prop
  boundaryMassFinite : Prop
  integerRectifiable : Prop

structure FedererCurrentEvidence (F : FedererCurrentPackage) where
  massFiniteClosed : F.massFinite
  boundaryMassFiniteClosed : F.boundaryMassFinite
  integerRectifiableClosed : F.integerRectifiable

def FedererCurrentClosed (F : FedererCurrentPackage) : Prop :=
  F.massFinite ∧ F.boundaryMassFinite ∧ F.integerRectifiable

theorem federer_current_closed_from_evidence (F : FedererCurrentPackage)
    (E : FedererCurrentEvidence F) : FedererCurrentClosed F := by
  exact And.intro E.massFiniteClosed
    (And.intro E.boundaryMassFiniteClosed E.integerRectifiableClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse