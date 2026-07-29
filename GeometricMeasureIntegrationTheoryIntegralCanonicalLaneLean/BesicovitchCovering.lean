import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure BesicovitchCoveringPackage where
  coveringFamily : Type
  coveringProperty : Prop
  differentiationTheorem : Prop
  maximalFunctionBound : Prop
  coveringConstant : ℕ

structure BesicovitchCoveringEvidence (B : BesicovitchCoveringPackage) where
  coveringPropertyClosed : B.coveringProperty
  differentiationTheoremClosed : B.differentiationTheorem
  maximalFunctionBoundClosed : B.maximalFunctionBound

def BesicovitchCoveringClosed (B : BesicovitchCoveringPackage) : Prop :=
  B.coveringProperty ∧ B.differentiationTheorem ∧ B.maximalFunctionBound

theorem besicovitch_covering_closed_from_evidence (B : BesicovitchCoveringPackage)
    (E : BesicovitchCoveringEvidence B) : BesicovitchCoveringClosed B := by
  exact And.intro E.coveringPropertyClosed
    (And.intro E.differentiationTheoremClosed E.maximalFunctionBoundClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse