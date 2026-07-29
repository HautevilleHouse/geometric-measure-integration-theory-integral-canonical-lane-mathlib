import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.RectifiableSets

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure FedererDecompositionPackage {R : RectifiableSetPackage} where
  decompositionExists : Prop
  rectifiablePartUnique : Prop
  purelyUnrectifiablePartUnique : Prop
  decompositionRefinesMeasure : Prop

structure FedererDecompositionEvidence {R : RectifiableSetPackage}
    (F : FedererDecompositionPackage R) where
  decompositionExistsClosed : F.decompositionExists
  rectifiablePartUniqueClosed : F.rectifiablePartUnique
  purelyUnrectifiablePartUniqueClosed : F.purelyUnrectifiablePartUnique
  decompositionRefinesMeasureClosed : F.decompositionRefinesMeasure

def FedererDecompositionClosed {R : RectifiableSetPackage}
    (F : FedererDecompositionPackage R) : Prop :=
  F.decompositionExists ∧ F.rectifiablePartUnique ∧
  F.purelyUnrectifiablePartUnique ∧ F.decompositionRefinesMeasure

theorem federer_decomposition_closed_from_evidence {R : RectifiableSetPackage}
    (F : FedererDecompositionPackage R) (E : FedererDecompositionEvidence F) :
    FedererDecompositionClosed F := by
  exact And.intro E.decompositionExistsClosed
    (And.intro E.rectifiablePartUniqueClosed
      (And.intro E.purelyUnrectifiablePartUniqueClosed E.decompositionRefinesMeasureClosed))

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse