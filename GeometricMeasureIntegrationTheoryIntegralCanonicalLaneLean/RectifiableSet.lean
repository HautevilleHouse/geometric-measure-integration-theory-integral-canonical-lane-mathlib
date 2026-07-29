import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure RectifiableSetPackage where
  ambientSpace : Type u
  metricAmbient : MetricSpace ambientSpace
  set : Set ambientSpace
  dimension : ℕ
  hausdorffMeasureFinite : Prop
  approximateTangentSpaceExists : Prop

structure RectifiableSetEvidence (R : RectifiableSetPackage) where
  hausdorffMeasureFiniteClosed : R.hausdorffMeasureFinite
  approximateTangentSpaceExistsClosed : R.approximateTangentSpaceExists

def RectifiableSetClosed (R : RectifiableSetPackage) : Prop :=
  R.hausdorffMeasureFinite ∧ R.approximateTangentSpaceExists

theorem rectifiable_set_closed_from_evidence (R : RectifiableSetPackage)
    (E : RectifiableSetEvidence R) : RectifiableSetClosed R := by
  exact And.intro E.hausdorffMeasureFiniteClosed E.approximateTangentSpaceExistsClosed

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse