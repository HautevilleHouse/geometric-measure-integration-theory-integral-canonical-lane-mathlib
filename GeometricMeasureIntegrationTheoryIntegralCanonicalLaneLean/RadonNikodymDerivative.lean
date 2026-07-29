import canonicalLaneMathlib.AdmissibleClass
import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.GeometricMeasureDomain

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure RNikodymDerivativePackage (G : GeometricMeasureDomain) where
  dominatedMeasure : (Set (G.carrier)) → ℝ≥0∞
  radonNikodymDerivative : G.carrier → ℝ
  densityDefined : Prop
  integralRecovery : Prop

structure RNikodymEvidence {G : GeometricMeasureDomain} (R : RNikodymDerivativePackage G) where
  densityDefinedClosed : R.densityDefined
  integralRecoveryClosed : R.integralRecovery

def RNikodymDerivativeClosed {G : GeometricMeasureDomain} (R : RNikodymDerivativePackage G) : Prop :=
  R.densityDefined ∧ R.integralRecovery

theorem rnikodym_derivative_closed_from_evidence {G : GeometricMeasureDomain} (R : RNikodymDerivativePackage G) (E : RNikodymEvidence R) : RNikodymDerivativeClosed R :=
  And.intro E.densityDefinedClosed E.integralRecoveryClosed

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse