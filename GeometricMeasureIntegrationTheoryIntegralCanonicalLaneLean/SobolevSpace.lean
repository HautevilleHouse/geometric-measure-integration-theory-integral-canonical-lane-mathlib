import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure SobolevSpacePackage where
  domain : Type u
  measureSpace : MeasureSpace domain
  exponent : ℝ≥1
  functionSpace : Type v
  weakDerivativeExists : Prop
  normComplete : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  weakDerivativeExistsClosed : S.weakDerivativeExists
  normCompleteClosed : S.normComplete

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.weakDerivativeExists ∧ S.normComplete

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage)
    (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro E.weakDerivativeExistsClosed E.normCompleteClosed

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse