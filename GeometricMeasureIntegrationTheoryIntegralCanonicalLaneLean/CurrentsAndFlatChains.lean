import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.RectifiableSets

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure CurrentPackage {R : RectifiableSetPackage} where
  currentDimension : ℕ
  boundaryOperator : Prop
  massFunctional : Prop
  flatNorm : Prop
  compactnessTheorem : Prop

structure CurrentEvidence {R : RectifiableSetPackage} (C : CurrentPackage R) where
  boundaryOperatorClosed : C.boundaryOperator
  massFunctionalClosed : C.massFunctional
  flatNormClosed : C.flatNorm
  compactnessTheoremClosed : C.compactnessTheorem

def CurrentClosed {R : RectifiableSetPackage} (C : CurrentPackage R) : Prop :=
  C.boundaryOperator ∧ C.massFunctional ∧ C.flatNorm ∧ C.compactnessTheorem

theorem current_closed_from_evidence {R : RectifiableSetPackage}
    (C : CurrentPackage R) (E : CurrentEvidence C) : CurrentClosed C := by
  exact And.intro E.boundaryOperatorClosed
    (And.intro E.massFunctionalClosed
      (And.intro E.flatNormClosed E.compactnessTheoremClosed))

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse