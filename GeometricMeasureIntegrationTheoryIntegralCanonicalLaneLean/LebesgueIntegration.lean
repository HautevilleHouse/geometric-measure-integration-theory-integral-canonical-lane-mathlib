import canonicalLaneMathlib.AdmissibleClass
import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.GeometricMeasureDomain

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure LebesgueIntegrationPackage (G : GeometricMeasureDomain) where
  measurableFunctions : Type u
  integral : (G.carrier → ℝ) → ℝ
  linearity : Prop
  monotoneConvergence : Prop
  dominatedConvergence : Prop

structure LebesgueIntegrationEvidence {G : GeometricMeasureDomain} (L : LebesgueIntegrationPackage G) where
  linearityClosed : L.linearity
  monotoneConvergenceClosed : L.monotoneConvergence
  dominatedConvergenceClosed : L.dominatedConvergence

def LebesgueIntegrationClosed {G : GeometricMeasureDomain} (L : LebesgueIntegrationPackage G) : Prop :=
  L.linearity ∧ L.monotoneConvergence ∧ L.dominatedConvergence

theorem lebesgue_integration_closed_from_evidence {G : GeometricMeasureDomain} (L : LebesgueIntegrationPackage G) (E : LebesgueIntegrationEvidence L) : LebesgueIntegrationClosed L :=
  And.intro E.linearityClosed (And.intro E.monotoneConvergenceClosed E.dominatedConvergenceClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse