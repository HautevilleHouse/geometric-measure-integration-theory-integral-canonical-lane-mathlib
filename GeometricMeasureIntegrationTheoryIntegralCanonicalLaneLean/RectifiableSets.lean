import canonicalLaneMathlib.AdmissibleClass
import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.GeometricMeasureDomain
import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.HausdorffMeasure

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure RectifiableSetsPackage (G : GeometricMeasureDomain) (H : HausdorffMeasurePackage G) where
  rectifiableSet : Set (G.carrier)
  lipschitzImageOfSubset : Prop
  hausdorffDimension : ℕ
  approximateTangentSpace : Prop

structure RectifiableSetsEvidence {G : GeometricMeasureDomain} {H : HausdorffMeasurePackage G} (R : RectifiableSetsPackage G H) where
  lipschitzImageOfSubsetClosed : R.lipschitzImageOfSubset
  hausdorffDimensionClosed : R.hausdorffDimension = 0 ∨ R.hausdorffDimension = 1 ∨ R.hausdorffDimension = 2 ∨ R.hausdorffDimension = 3
  approximateTangentSpaceClosed : R.approximateTangentSpace

def RectifiableSetsClosed {G : GeometricMeasureDomain} {H : HausdorffMeasurePackage G} (R : RectifiableSetsPackage G H) : Prop :=
  R.lipschitzImageOfSubset ∧ (R.hausdorffDimension = 0 ∨ R.hausdorffDimension = 1 ∨ R.hausdorffDimension = 2 ∨ R.hausdorffDimension = 3) ∧ R.approximateTangentSpace

theorem rectifiable_sets_closed_from_evidence {G : GeometricMeasureDomain} {H : HausdorffMeasurePackage G} (R : RectifiableSetsPackage G H) (E : RectifiableSetsEvidence R) : RectifiableSetsClosed R :=
  And.intro E.lipschitzImageOfSubsetClosed (And.intro E.hausdorffDimensionClosed E.approximateTangentSpaceClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse