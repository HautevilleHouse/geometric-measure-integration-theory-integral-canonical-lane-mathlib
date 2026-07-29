import canonicalLaneMathlib.AdmissibleClass
import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.GeometricMeasureDomain

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure HausdorffMeasurePackage (G : GeometricMeasureDomain) where
  dimension : ℝ
  hausdorffMeasure : (Set (G.carrier)) → ℝ≥0∞
  metricSpace : MetricSpace (G.carrier)
  caratheodoryConstruction : Prop
  countableSubsetsCovered : Prop

structure HausdorffMeasureEvidence {G : GeometricMeasureDomain} (H : HausdorffMeasurePackage G) where
  caratheodoryConstructionClosed : H.caratheodoryConstruction
  countableSubsetsCoveredClosed : H.countableSubsetsCovered

def HausdorffMeasureClosed {G : GeometricMeasureDomain} (H : HausdorffMeasurePackage G) : Prop :=
  H.caratheodoryConstruction ∧ H.countableSubsetsCovered

theorem hausdorff_measure_closed_from_evidence {G : GeometricMeasureDomain} (H : HausdorffMeasurePackage G) (E : HausdorffMeasureEvidence H) : HausdorffMeasureClosed H :=
  And.intro E.caratheodoryConstructionClosed E.countableSubsetsCoveredClosed

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse