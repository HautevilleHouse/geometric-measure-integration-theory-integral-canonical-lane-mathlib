import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

def ConstrainedIntegrationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_integration_endgame (A : AdmissibleClass) :
    ConstrainedIntegrationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse