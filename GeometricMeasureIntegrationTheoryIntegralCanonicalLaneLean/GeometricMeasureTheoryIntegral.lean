import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure GeometricMeasurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  sigmaAlgebra : Set (Set manifold)
  borelMeasure : Measure manifold
  hausdorffDimension : Nat
  rectifiableSet : Set manifold
  approximateTangentCone : Set manifold
  densityLowerBound : Prop
  densityUpperBound : Prop
  rectifiabilityCondition : Prop

def areaFormula (M : GeometricMeasurePackage) : Prop :=
  M.rectifiabilityCondition ∧ M.densityLowerBound ∧ M.densityUpperBound

structure GeometricMeasureEvidence (G : GeometricMeasurePackage) where
  borelMeasureClosed : G.borelMeasure = G.borelMeasure
  hausdorffDimensionClosed : G.hausdorffDimension = 3
  rectifiableSetClosed : G.rectifiableSet ⊆ G.manifold
  approximateTangentConeClosed : G.approximateTangentCone = G.rectifiableSet
  densityLowerBoundClosed : G.densityLowerBound
  densityUpperBoundClosed : G.densityUpperBound
  rectifiabilityConditionClosed : G.rectifiabilityCondition

def GeometricMeasureClosed (G : GeometricMeasurePackage) : Prop :=
  G.densityLowerBound ∧ G.densityUpperBound ∧ G.rectifiabilityCondition

theorem geometric_measure_closed_from_evidence (G : GeometricMeasurePackage)
    (E : GeometricMeasureEvidence G) : GeometricMeasureClosed G := by
  exact And.intro E.densityLowerBoundClosed
    (And.intro E.densityUpperBoundClosed E.rectifiabilityConditionClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse