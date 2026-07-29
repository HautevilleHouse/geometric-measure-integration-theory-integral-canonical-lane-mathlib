import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.GeometricMeasureSpace

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure IntegrationPackage (M : GeometricMeasureSpace) where
  integrableFunctions : Type u
  integralMap : integrableFunctions → ℝ
  linearity : Prop
  monotoneConvergence : Prop
  dominatedConvergence : Prop
  integralNonnegative : Prop

structure IntegrationEvidence (M : GeometricMeasureSpace) (I : IntegrationPackage M) where
  linearityClosed : I.linearity
  monotoneConvergenceClosed : I.monotoneConvergence
  dominatedConvergenceClosed : I.dominatedConvergence
  integralNonnegativeClosed : I.integralNonnegative

def IntegrationClosed (M : GeometricMeasureSpace) (I : IntegrationPackage M) : Prop :=
  I.linearity ∧ I.monotoneConvergence ∧ I.dominatedConvergence ∧ I.integralNonnegative

theorem integration_closed_from_evidence (M : GeometricMeasureSpace) (I : IntegrationPackage M)
    (E : IntegrationEvidence M I) : IntegrationClosed M I := by
  exact And.intro E.linearityClosed
    (And.intro E.monotoneConvergenceClosed
      (And.intro E.dominatedConvergenceClosed E.integralNonnegativeClosed))

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse