import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.GeometricMeasureSpace

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure RadonNikodymPackage (M : GeometricMeasureSpace) where
  signedMeasure : Type u
  absoluteContinuity : Prop
  radonNikodymDerivative : signedMeasure → (M.carrier → ℝ)
  recoversMeasure : Prop
  uniqueness : Prop

structure RadonNikodymEvidence (M : GeometricMeasureSpace) (R : RadonNikodymPackage M) where
  absoluteContinuityClosed : R.absoluteContinuity
  recoversMeasureClosed : R.recoversMeasure
  uniquenessClosed : R.uniqueness

def RadonNikodymClosed (M : GeometricMeasureSpace) (R : RadonNikodymPackage M) : Prop :=
  R.absoluteContinuity ∧ R.recoversMeasure ∧ R.uniqueness

theorem radon_nikodym_closed_from_evidence (M : GeometricMeasureSpace)
    (R : RadonNikodymPackage M) (E : RadonNikodymEvidence M R) : RadonNikodymClosed M R := by
  exact And.intro E.absoluteContinuityClosed
    (And.intro E.recoversMeasureClosed E.uniquenessClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse