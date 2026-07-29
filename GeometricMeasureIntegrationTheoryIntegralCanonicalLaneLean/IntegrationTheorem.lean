import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure IntegralPackage (G : GeometricMeasurePackage) where
  integrableFunction : G.manifold → ℝ
  measureIntegral : ℝ
  integralApproximation : Prop
  absoluteContinuity : Prop
  dominationConvergence : Prop

structure IntegralEvidence {G : GeometricMeasurePackage}
    (I : IntegralPackage G) where
  integralApproximationClosed : I.integralApproximation
  absoluteContinuityClosed : I.absoluteContinuity
  dominationConvergenceClosed : I.dominationConvergence

def IntegralClosed {G : GeometricMeasurePackage} (I : IntegralPackage G) : Prop :=
  I.integralApproximation ∧ I.absoluteContinuity ∧ I.dominationConvergence

theorem integral_closed_from_evidence {G : GeometricMeasurePackage}
    (I : IntegralPackage G) (E : IntegralEvidence I) : IntegralClosed I := by
  exact And.intro E.integralApproximationClosed
    (And.intro E.absoluteContinuityClosed E.dominationConvergenceClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse