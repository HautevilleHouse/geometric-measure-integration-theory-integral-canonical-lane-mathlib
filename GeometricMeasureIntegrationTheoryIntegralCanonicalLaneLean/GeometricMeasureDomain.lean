import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure GeometricMeasureDomain where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  measure : (Set carrier) → ℝ≥0∞
  sigmaFinite : Prop
  sigmaFiniteTerm : sigmaFinite

structure GeometricMeasureEvidence (G : GeometricMeasureDomain) where
  sigmaFiniteClosed : G.sigmaFinite

def GeometricMeasureClosed (G : GeometricMeasureDomain) : Prop :=
  G.sigmaFinite

theorem geometric_measure_closed_from_evidence (G : GeometricMeasureDomain) (E : GeometricMeasureEvidence G) : GeometricMeasureClosed G :=
  E.sigmaFiniteClosed

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse