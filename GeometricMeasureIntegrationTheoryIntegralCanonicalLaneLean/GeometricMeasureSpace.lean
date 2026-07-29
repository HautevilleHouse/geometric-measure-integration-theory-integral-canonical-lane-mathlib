import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure GeometricMeasureSpace where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  preMeasure : (Set carrier) → ℝ≥0∞
  caratheodoryMeasurable : Prop
  outerRegular : Prop
  innerRegular : Prop
  complete : Prop
  sigmaFinite : Prop

structure GeometricMeasureEvidence (M : GeometricMeasureSpace) where
  caratheodoryMeasurableClosed : M.caratheodoryMeasurable
  outerRegularClosed : M.outerRegular
  innerRegularClosed : M.innerRegular
  completeClosed : M.complete
  sigmaFiniteClosed : M.sigmaFinite

def GeometricMeasureClosed (M : GeometricMeasureSpace) : Prop :=
  M.caratheodoryMeasurable ∧ M.outerRegular ∧ M.innerRegular ∧ M.complete ∧ M.sigmaFinite

theorem geometric_measure_closed_from_evidence (M : GeometricMeasureSpace)
    (E : GeometricMeasureEvidence M) : GeometricMeasureClosed M := by
  exact And.intro E.caratheodoryMeasurableClosed
    (And.intro E.outerRegularClosed
      (And.intro E.innerRegularClosed
        (And.intro E.completeClosed E.sigmaFiniteClosed)))

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse